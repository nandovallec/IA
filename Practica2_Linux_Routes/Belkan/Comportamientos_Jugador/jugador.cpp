#include "../Comportamientos_Jugador/jugador.hpp"
#include "motorlib/util.h"


#include <iostream>
#include <cmath>
#include <queue>
#include <algorithm>    // std::fill

/////
const int ancho=200; // horizontal size of the map
const int alto=200; // vertical size size of the map
static int mapa_nodos_cerrados[ancho][alto]; // map of closed (tried-out) nodes
static int mapa_nodos_abiertos[ancho][alto]; // map of open (not-yet-tried) nodes
static int mapa_direcc[ancho][alto]; // map of directions			// mark the direction of the parent
const int dir=4; // number of possible directions
static char mapaProvisional[ancho][alto]={};
static int calc_x[dir]={1, 0, -1, 0};
static int calc_y[dir]={0, -1, 0, 1};
static int calc_esq[dir]={20, 20, 180, 180};

class nodo
{
    // current position
    int xPos;
    int yPos;
    // total distance already travelled to reach the nodo
    int nivel;
    // prioridad=nivel+remaining distance estimar
    int prioridad;  // smaller: higher prioridad

    public:
        nodo(int xp, int yp, int d, int p) 
            {xPos=xp; yPos=yp; nivel=d; prioridad=p;}
    
        int getxPos() const {return xPos;}
        int getyPos() const {return yPos;}
        int getNivel() const {return nivel;}	
        int getPrioridad() const {return prioridad;}

        void actualizarPrioridad(const int & xDest, const int & yDest)
        {
			
            	prioridad=nivel+estimar(xDest, yDest); //A*
			
        }

        // give better prioridad to going strait instead of diagonally
        void sigNivel(const int & i) // i: direction
        {
			int xPad=xPos + calc_x[i], yPad= yPos + calc_y[i];
			
             nivel=nivel+4;	
			if (mapa_direcc[xPad][yPad] == i){
					nivel =nivel- 2;
			}	// it needs to be modified
														// if i add something to keep track of the direction that it comes from 
															// if its straight it will be 10, if it had to make a turn its 20 (higher is worse)
        }
        
        // Estimation function for the remaining distance to the goal.
        const int & estimar(const int & xDest, const int & yDest) const
        {
            static int xd, yd, d;
            xd=xDest-xPos;
            yd=yDest-yPos;         

            // Euclidian Distance
            //d=static_cast<int>(sqrt(xd*xd+yd*yd));

            // Manhattan distance
            d=abs(xd)+abs(yd);
            
            // Chebyshev distance
            //d=max(abs(xd), abs(yd));

            return d;
        }
};

bool operator<(const nodo & a, const nodo & b)
{
  return a.getPrioridad() > b.getPrioridad();
}

////////////////

void ComportamientoJugador::actualizarPosicion(const Action accion){
// Actualizar el efecto de la ultima accion
	switch (ultimaAccion){
		case actTURN_R: brujula = (brujula+1)%4; break;
		case actTURN_L: brujula = (brujula+3)%4; break;
		case actFORWARD:
			switch (brujula){
				case 0: fil--; break;
				case 1: col++; break;
				case 2: fil++; break;
				case 3: col--; break;
			}
			//cout << "fil: " << fil << "  col: " << col << " Or: " << brujula << endl;
	}
}
//////////////////

estado ComportamientoJugador::irCasilla(){
	estado casilla;
	bool encontrado = false;
	int i, j;
	//cout << "al comeznar " << fil <<"  " <<col<<endl;
	for(i = fil-4; i <= fil+4 && !encontrado; i++){
		for(j= col-4; j <= col+4 && !encontrado; j++){
			if(mapaProvisional[i][j] == 'K')
				encontrado = true;
			//cout << "encontramos " << mapaProvisional[i][j] << "  en "<< i << "|" <<j<<endl;
		}
	}
	casilla.fila = i-1;
	casilla.columna = j-1;
	return casilla;
}

/////////////////

bool ComportamientoJugador::replanChoque(list<Action> &plan, Sensores sensores){
	list<Action>::iterator it = plan.begin();
	if((*it) == actFORWARD)
		//cout << "Primera va derecho";
	++it;
	if((*it) == actTURN_R){
		//cout <<"Derecha segunda"<<endl;
		return (sensores.terreno.at(3)!='K'&& sensores.terreno.at(3)!='S' && sensores.terreno.at(3)!='T');
	}else if((*it) == actTURN_L){
		//cout <<"Izquierda segunda"<<endl;
		return (sensores.terreno.at(1)!='K'&& sensores.terreno.at(1)!='S' && sensores.terreno.at(1)!='T');
	}else
		return false;
}



////////

void ComportamientoJugador::aniadirMapa(Sensores sensores, const estado &origen, const bool original){
	int xStart = 0, yStart = 0;
	int pos = 0, limite = 1;
	int ajusteX = 1, ajusteY = 1, meh = 1;
	//cout << "or" << origen.orientacion << endl;
	if (origen.orientacion == 3){
		ajusteX = -1;
		ajusteY = -1;
	}else if(origen.orientacion == 0 || origen.orientacion == 2){
		int aux = xStart;
		xStart = yStart;
		yStart = aux;
		//cout << "camibooo"<<endl;
		if (origen.orientacion == 0)
			ajusteX = -1;
	}
		
	while(pos < 16){
		if((origen.orientacion) == 0 || (origen.orientacion) == 2){
			if (original){
				mapaResultado[(origen.fila) + xStart][(origen.columna) + yStart] = sensores.terreno.at(pos);
				mapaEntidades[(origen.fila) + xStart][(origen.columna) + yStart] = sensores.superficie.at(pos);
				//cout << "pos " << pos<<"   "<< yStart <<"||"<<xStart << "    " << sensores.terreno.at(pos) << "   lim" << limite<<"  orig " << (origen.fila) +yStart<< "  " <<(origen.columna) +xStart<< "  "<<endl;
			}else{
				if(sensores.superficie.at(pos) == 'a')
					mapaProvisional[(origen.fila) + xStart][(origen.columna) + yStart] = sensores.superficie.at(pos);
				else
					mapaProvisional[(origen.fila) + xStart][(origen.columna) + yStart] = sensores.terreno.at(pos);

				//cout << "pos " << pos<<"   "<< (origen.fila) + xStart <<"||"<< (origen.columna) + yStart << "    " << sensores.terreno.at(pos) <<endl;
			}
		}else{
			if(original){
				mapaResultado[origen.fila + yStart][origen.columna + xStart] = sensores.terreno.at(pos);
				mapaEntidades[origen.fila + yStart][origen.columna + xStart] = sensores.superficie.at(pos);
				//cout << "pos " << pos<<"   "<< xStart <<"||"<<yStart << "    " << sensores.terreno.at(pos) << "   lim" << limite<<endl;
			}else{
				if(sensores.superficie.at(pos) == 'a')
					mapaProvisional[origen.fila + yStart][origen.columna + xStart] = sensores.superficie.at(pos);
				else
					mapaProvisional[origen.fila + yStart][origen.columna + xStart] = sensores.terreno.at(pos);

				//cout << "pos " << pos<<"   "<< origen.fila + yStart <<"||"<<origen.columna + xStart << "    " << sensores.terreno.at(pos) << "   lim" << limite<<endl;
			}
		}
		if(pos+1 == limite){
			xStart = xStart + (1*ajusteX);
			yStart = 0 - abs(xStart*ajusteY);
			if(origen.orientacion == 3 || origen.orientacion == 2)
				yStart = 0 + xStart*ajusteY;
			limite = limite + (2*meh) +1;
			meh++;
		}else{
			if(origen.orientacion != 2)
				yStart = yStart + (1 * ajusteY);
			else
				yStart = yStart - (1*ajusteY);
		}
		pos++;
	}
}

///////

void ComportamientoJugador::fusionMapas(int x_ant, int y_ant) {
	int ini_x = x_ant - fil;
	int ini_y = y_ant - col;
	for(int i = 0; i < mapaResultado.size()-1; i++ ){
		for(int j = 0; j < mapaResultado.size()-1; j++){
			if(mapaProvisional[ini_x+i][ini_y+j] != '?' && mapaProvisional[ini_x+i][ini_y+j] != 'a')
				mapaResultado[i][j] = mapaProvisional[ini_x+i][ini_y+j];
		}
	}
}

///////

void ComportamientoJugador::PintaPlan(list<Action> plan) {
	auto it = plan.begin();
	while (it!=plan.end()){
		if (*it == actFORWARD){
			cout << "A ";
		}
		else if (*it == actTURN_R){
			cout << "D ";
		}
		else if (*it == actTURN_L){
			cout << "I ";
		}
		else {
			cout << "- ";
		}
		it++;
	}
	cout << endl;
}
////////////////////

bool ComportamientoJugador::condicionar(const bool aldean, const bool original, const int x, const int y){


	bool comunes = x>0 && y>0 && !(mapa_nodos_cerrados[x][y]==1);
	bool rangos;
	bool transitable;
	bool hay_aldeano = false;
	if(original){
		rangos = x <(mapaResultado.size())-1 && y <(mapaResultado.size())-1;
		if(aldean)
			hay_aldeano = (mapaEntidades[x][y]=='a');
		transitable = ((mapaResultado[x][y]=='K' || mapaResultado[x][y]=='S' || mapaResultado[x][y]=='T' || mapaResultado[x][y]=='?')&&!hay_aldeano);
	}
	else{
		rangos = x<ancho-1 && y<alto-1;
		transitable = (mapaProvisional[x][y]=='K' || mapaProvisional[x][y]=='S' || mapaProvisional[x][y]=='T' || mapaProvisional[x][y]=='?');
	}
	
	/*if(comunes)
	cout << "comun";
	if(rangos)
	cout << "rangos";
	if(transitable)
	cout << "transitable";
	cout << "mapa es " << mapaProvisional[x][y] << endl;*/
	return comunes && rangos && transitable;
}



////////////////////

bool ComportamientoJugador::pathFinding(const estado &origen, const estado &destino, list<Action> &plan, bool aldean, bool original) {
	//Borro la lista
	plan.clear();
	int xStart = origen.fila, yStart = origen.columna, xFinish = destino.fila, yFinish = destino.columna;
	estado st = origen;
	static priority_queue<nodo> cola_prio[2]; // list of open (not-yet-tried) nodes
	    static int cola_prio_indice; // cola_prio index
	    static nodo* n0;
	    static nodo* m0;
	    static int i, j, x, y, nueva_x, nueva_y;
	    static char c;
	    bool hay_aldeano = false;
	    cola_prio_indice=0;

	    // reset the nodo maps
	    for(y=0;y<ancho;y++)
	    {
		for(x=0;x<alto;x++)
		{
		    mapa_nodos_cerrados[x][y]=0;
		    mapa_nodos_abiertos[x][y]=0;
		    mapa_direcc[x][y] = 4;
		}
	    }

	    // create the start nodo and push into list of open nodes
	    n0=new nodo(xStart, yStart, 0, 0);
	    n0->actualizarPrioridad(xFinish, yFinish);
	    cola_prio[cola_prio_indice].push(*n0);
	    mapa_nodos_abiertos[xStart][yStart]=n0->getPrioridad(); // mark it on the open nodes map

	    // A* search
	    while(!cola_prio[cola_prio_indice].empty())
	    {
		// get the current nodo w/ the highest prioridad
		// from the list of open nodes
		n0=new nodo( cola_prio[cola_prio_indice].top().getxPos(), cola_prio[cola_prio_indice].top().getyPos(), 
		             cola_prio[cola_prio_indice].top().getNivel(), cola_prio[cola_prio_indice].top().getPrioridad());

		x=n0->getxPos(); y=n0->getyPos();

		cola_prio[cola_prio_indice].pop(); // remove the nodo from the open list
		mapa_nodos_abiertos[x][y]=0;
		// mark it on the closed nodes map
		mapa_nodos_cerrados[x][y]=1;

		// quit searching when the goal state is reached
		//if((*n0).estimar(xFinish, yFinish) == 0)
		if(x==xFinish && y==yFinish) 
		{
			//cout << " he creado un plan" << endl;
		    // generate the path from finish to start
		    // by following the directions
		    string path="";
		    while(!(x==xStart && y==yStart))
		    {
		        j=mapa_direcc[x][y];
		        c='0'+(j+dir/2)%dir;
		        path=c+path;
		        x+=calc_x[j];
		        y+=calc_y[j];
		    }

//insert actions in the queue
			int j; string c;
			int orient = (origen.orientacion-2)+4;
			int x = origen.fila, y = origen.columna;
			//cout << " tengo el camino " << path<< endl;
		    for(int i=0;i<path.length();i++)
			{
			    c =path.at(i);
			    j=stoi(c); 
				//cout << " c es " << c << " y j es " << j << endl;
			    x=x+calc_x[j];
			    y=y+calc_y[j];
				//cout << " me meto en el if " << endl;
				if (orient != j)
					if (((j-orient+4)%4) == 1){
						plan.push_back(actTURN_R);
						orient++;
					}
					while (((orient+4)%4) != j){
						//cout << "Mi orientacion es" << orient << " quiero ir a " << j << endl;
						plan.push_back(actTURN_L);
						orient = (orient +3)%4;
					}

				plan.push_back(actFORWARD);
			}
		    
		    delete n0;
		    // empty the leftover nodes
		    while(!cola_prio[cola_prio_indice].empty())
					cola_prio[cola_prio_indice].pop();

		    if(!aldean)
		    	VisualizaPlan(origen, plan);           
		    return true;
		}

		// generate moves (child nodes) in all possible directions
		for(i=0;i<dir;i++)
		{
		    nueva_x=x+calc_x[i]; nueva_y=y+calc_y[i];//cout << "intento generar: "<< nueva_x << " " << nueva_y;
			//cout << "nuevo " << nueva_x << "|"<< nueva_y <<"  " << mapaResultado[nueva_x][nueva_y] <<endl;
			
		    if(condicionar(aldean, original, nueva_x, nueva_y))	// if is is not out of range and it is not a wall
		    {//cout << " if" << endl;
		        // generate a child nodo
			int anterior_dir = mapa_direcc[nueva_x][nueva_y];
			mapa_direcc[nueva_x][nueva_y]=(i+dir/2)%dir;
		        m0=new nodo( nueva_x, nueva_y, n0->getNivel(), n0->getPrioridad());
		        m0->sigNivel(i);
		        m0->actualizarPrioridad(xFinish, yFinish);

		        // if it is not in the open list then add into that
		        if(mapa_nodos_abiertos[nueva_x][nueva_y]==0)
		        {
		            mapa_nodos_abiertos[nueva_x][nueva_y]=m0->getPrioridad();
		            cola_prio[cola_prio_indice].push(*m0);
		            // mark its parent nodo direction
		            
		        }
		        else if(mapa_nodos_abiertos[nueva_x][nueva_y]>m0->getPrioridad()) // if node's priority is smaller (better) than the other
		        {
		            // update the prioridad info
		            mapa_nodos_abiertos[nueva_x][nueva_y]=m0->getPrioridad();
		            // update the parent direction info
		            mapa_direcc[nueva_x][nueva_y]=(i+dir/2)%dir;	// opposite side

		            // replace the nodo
		            // by emptying one cola_prio to the other one
		            // except the nodo to be replaced will be ignored
		            // and the new nodo will be pushed in instead
		            while(!(cola_prio[cola_prio_indice].top().getxPos()==nueva_x && cola_prio[cola_prio_indice].top().getyPos()==nueva_y))
		            {                
		                cola_prio[(cola_prio_indice+1)%2].push(cola_prio[cola_prio_indice].top());
		                cola_prio[cola_prio_indice].pop();       
		            }
		            cola_prio[cola_prio_indice].pop(); // remove the wanted nodo
		            
		            // empty the larger size cola_prio to the smaller one to minimize the number of push
		            if(cola_prio[cola_prio_indice].size()>cola_prio[(cola_prio_indice+1)%2].size())
				cola_prio_indice=(cola_prio_indice+1)%2;
		            while(!cola_prio[cola_prio_indice].empty())
		            {                
		                cola_prio[(cola_prio_indice+1)%2].push(cola_prio[cola_prio_indice].top());
		                cola_prio[cola_prio_indice].pop();       
		            }
		            cola_prio_indice=(cola_prio_indice+1)%2;
		            cola_prio[cola_prio_indice].push(*m0); // add the better nodo instead
		        }
		        else{
				mapa_direcc[nueva_x][nueva_y] = anterior_dir;	
				delete m0; 
			}
		    }
		}
		delete n0; 
	    }
	
	return false;
}

Action ComportamientoJugador::think(Sensores sensores) {
		static bool recibo_coordenada = false;
		static bool estoy_perdido = true;
		static bool nivel3 = true;
		static int intent = 0 , camb_esq = 0;
		static bool inicializado = !(mapaResultado[0][0]='?');
		bool puntoEncontrado = false;
		static bool referencia = false;
		static int alt_esq=0;
	if(!inicializado){
		for(int i = 0; i < 200; i++)
			for(int j = 0; j < 200; j++)
				mapaProvisional[i][j] = '?';

		inicializado = true;
		destino.fila = 110;
		destino.columna = 80;
	}

	actualizarPosicion(ultimaAccion);



	recibo_coordenada = (sensores.mensajeF != -1) && estoy_perdido;
	if (recibo_coordenada){
		int fil_ant = fil, col_ant = col;
		fil = sensores.mensajeF;
		col = sensores.mensajeC;
		fusionMapas(fil_ant, col_ant);
		estoy_perdido = false;
		cout << "Ya se donde estoy"<<endl;
	}

	
	Action sigAccion = plan.front();
	if(!estoy_perdido){
		sigAccion = plan.front();
		if(nivel3){
			estado origen;
			origen.fila = fil;
			origen.columna = col;
			origen.orientacion = brujula;
			aniadirMapa(sensores, origen, true);

		}
		//cout << "tengo delante " << sensores.superficie.at(2) << endl;
		if (((sigAccion==actFORWARD)&& ((sensores.superficie.at(2) == 'a') || (sensores.terreno.at(2)!='K'&& sensores.terreno.at(2)!='S' && sensores.terreno.at(2)!='T')||replanChoque(plan, sensores)))){
			hayPlan=false;
			if(replanChoque(plan, sensores))
				cout << "replan choque recalcula" << endl;
			//cout << "no podemos mas" << endl;
		}

		// Determinar si ha cambiado el destino desde la ultima planificacion
		if (hayPlan and (sensores.destinoF != destino.fila or sensores.destinoC != destino.columna)){
			cout << "El destino ha cambiado\n";
			hayPlan = false;
		}
		// Determinar si tengo que construir un plan
		estado origen;
		if (!hayPlan){
			
			origen.fila = fil;
			origen.columna = col;
			origen.orientacion = brujula;

			destino.fila = sensores.destinoF;
			destino.columna = sensores.destinoC;
			hayPlan = pathFinding(origen,destino,plan, false, true);
			//cout << "calculo plan" << endl;
		}
		if (hayPlan && (sensores.superficie.at(2) == 'a')){
			origen.fila = fil;
			origen.columna = col;
			origen.orientacion = brujula;
			cout << "voy a borrar  " ;
			hayPlan=false;
			list<Action> plan_res;
			hayPlan = pathFinding(origen,destino,plan_res, true, true);
			if(hayPlan && (((plan.size())+10 > plan_res.size())|| intent > 10)){
				cout << " cambio     "<<plan.size()<<"   " <<plan_res.size() << endl;
				cout << "he cambiado" << endl;
				plan.swap(plan_res);
				plan_res.clear();
				sigAccion = plan.front();
				intent = 0;
				VisualizaPlan(origen, plan);
			}else{
				hayPlan=false;
				intent++;
				plan.clear();
				plan_res.clear();
			}
			
			
		}

	}else{				//Explorar
		
		for (int j = 0; j < 16 && !puntoEncontrado; j++){
			if(sensores.terreno.at(j) == 'K'){
				puntoEncontrado = true;
			}
		}

		estado origen;
		origen.fila = fil;
		origen.columna = col;
		origen.orientacion = brujula;
		aniadirMapa(sensores, origen, false);

		if ((((sigAccion==actFORWARD)&& ((sensores.superficie.at(2) == 'a') || (sensores.terreno.at(2)!='K'&& sensores.terreno.at(2)!='S' && sensores.terreno.at(2)!='T')||replanChoque(plan, sensores))))&&!puntoEncontrado){
			hayPlan=false;
			intent++;
			camb_esq++;
			//cout << "no podemos mas" << endl;
		}
		

		if(!puntoEncontrado && !hayPlan){
			if(camb_esq > 50){
				destino.fila = calc_esq[alt_esq];
				destino.columna = calc_esq[(alt_esq+1)%4];
				alt_esq = (alt_esq +1)%4;
				camb_esq = 0;
				hayPlan=false;
				cout << "Ahora busco" << destino.fila << " " << destino.columna<< endl;
			}	

			hayPlan = pathFinding(origen,destino,plan, true, false);
			//cout << "calculo plan falso" << endl;
		}
		if(puntoEncontrado && !referencia){
			cout << "hemos encontrado referenciaAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA" << endl;
			hayPlan = true;
			destino = irCasilla();
			hayPlan = pathFinding(origen, destino, plan, true, false);
			PintaPlan(plan);
			referencia = true;
			//cout << "estoy en " << fil << "|" << col<< " voy a " << destino.fila<< "|" << destino.columna<< endl;
		}
		if (((sigAccion==actFORWARD)&& ((sensores.superficie.at(2) == 'a') || (sensores.terreno.at(2)!='K'&& sensores.terreno.at(2)!='S' && sensores.terreno.at(2)!='T')))){
			hayPlan=false;
			camb_esq++;
			//cout << "no podemos mas" << endl;
		}
	}
	// Ejecutar el plan
	//PintaPlan(plan);
	if (plan.size()>0 && (hayPlan || estoy_perdido)){
		//cout << "plan no vacio "<< plan.size() << endl;
		sigAccion = plan.front();
		plan.erase(plan.begin());
		intent = 0;
	}
	else {
		//cout << "Tamaño plan cero" <<endl;
		hayPlan = false;
		sigAccion = actIDLE;
		intent++;
		camb_esq++;
		//cout << "aaaa  "<< intent <<endl;
	}
	//cout << "Posicion" << fil << " " << col<<" obj "<<destino.fila<<"|"<<destino.columna<<endl;
	ultimaAccion = sigAccion;
	return sigAccion;
}


void AnularMatriz(vector<vector<unsigned char> > &m){
	for (int i=0; i<m[0].size(); i++){
		for (int j=0; j<m.size(); j++){
			m[i][j]=0;
		}
	}
}

void ComportamientoJugador::VisualizaPlan(const estado &st, const list<Action> &plan){
  AnularMatriz(mapaConPlan);
	estado cst = st;

	auto it = plan.begin();
	while (it!=plan.end()){
		if (*it == actFORWARD){
			switch (cst.orientacion) {
				case 0: cst.fila--; break;
				case 1: cst.columna++; break;
				case 2: cst.fila++; break;
				case 3: cst.columna--; break;
			}
			mapaConPlan[cst.fila][cst.columna]=1;
		}
		else if (*it == actTURN_R){
			cst.orientacion = (cst.orientacion+1)%4;
		}
		else {
			cst.orientacion = (cst.orientacion+3)%4;
		}
		it++;
	}
}

int ComportamientoJugador::interact(Action accion, int valor){
  return false;
}
