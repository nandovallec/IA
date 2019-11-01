// Astar.cpp
// http://en.wikipedia.org/wiki/A*
// Compiler: Dev-C++ 4.9.9.2
// FB - 201012256
#include <iostream>
#include <iomanip>
#include <queue>
#include <string>
#include <math.h>
#include <ctime>
#include <stdlib.h> 
#include <time.h> 
#include <stdio.h>
using namespace std;

/*
Con 4 direcciones
		3
		|
	 2 -x- 0
		|
		1


	  5 6 7
	   \|/
	 4 -x- 0
	   /|\
	  3 2 1
*/

const int ancho=40; // horizontal size of the map
const int alto=40; // vertical size size of the map
static int map[ancho][alto];
static int mapa_nodos_cerrados[ancho][alto]; // map of closed (tried-out) nodes
static int mapa_nodos_abiertos[ancho][alto]; // map of open (not-yet-tried) nodes
static int mapa_direcc[ancho][alto]; // map of directions			// mark the direction of the parent
const int dir=4; // number of possible directions to go at any position
// if dir==4
static int calc_x[dir]={1, 0, -1, 0};
static int calc_y[dir]={0, 1, 0, -1};
// if dir==8
//static int calc_x[dir]={1, 1, 0, -1, -1, -1, 0, 1};
//static int calc_y[dir]={0, 1, 1, 1, 0, -1, -1, -1};

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
			
            	prioridad=nivel+estimar(xDest, yDest)*10; //A*
			
        }

        // give better prioridad to going strait instead of diagonally
        void sigNivel(const int & i) // i: direction
        {
			int xPad=xPos + calc_x[i], yPad= yPos + calc_y[i];
			
             nivel+=10;	
			if (mapa_direcc[xPad][yPad] == i){
					nivel -= 10;
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

            return(d);
        }
};

// Determine prioridad (in the prioridad queue)
bool operator<(const nodo & a, const nodo & b)
{
  return a.getPrioridad() > b.getPrioridad();
}

// A-star algorithm.
// The route returned is a string of direction digits.
string pathFind( const int & xStart, const int & yStart, 
                 const int & xFinish, const int & yFinish )
{
    static priority_queue<nodo> cola_prio[2]; // list of open (not-yet-tried) nodes
    static int cola_prio_indice; // cola_prio index
    static nodo* n0;
    static nodo* m0;
    static int i, j, x, y, nueva_x, nueva_y;
    static char c;
    cola_prio_indice=0;

    // reset the nodo maps
    for(y=0;y<alto;y++)
    {
        for(x=0;x<ancho;x++)
        {
            mapa_nodos_cerrados[x][y]=0;
            mapa_nodos_abiertos[x][y]=0;
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

            // garbage collection
            delete n0;
            // empty the leftover nodes
            while(!cola_prio[cola_prio_indice].empty())
				cola_prio[cola_prio_indice].pop();           
            return path;
        }

        // generate moves (child nodes) in all possible directions
        for(i=0;i<dir;i++)
        {
            nueva_x=x+calc_x[i]; nueva_y=y+calc_y[i];

            if(!(nueva_x<0 || nueva_x>ancho-1 || nueva_y<0 || nueva_y>alto-1 || map[nueva_x][nueva_y]==1 || mapa_nodos_cerrados[nueva_x][nueva_y]==1))	// if is is not out of range and it is not a wall
            {
                // generate a child nodo
                m0=new nodo( nueva_x, nueva_y, n0->getNivel(), n0->getPrioridad());
                m0->sigNivel(i);
                m0->actualizarPrioridad(xFinish, yFinish);

                // if it is not in the open list then add into that
                if(mapa_nodos_abiertos[nueva_x][nueva_y]==0)
                {
                    mapa_nodos_abiertos[nueva_x][nueva_y]=m0->getPrioridad();
                    cola_prio[cola_prio_indice].push(*m0);
                    // mark its parent nodo direction
                    mapa_direcc[nueva_x][nueva_y]=(i+dir/2)%dir;
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
                    
                    // empty the larger size cola_prio to the smaller one
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
                else
					delete m0; // garbage collection
            }
        }
        delete n0; // garbage collection
    }
    return ""; // no route found
}

int main()
{
    srand(time(NULL));

    // create empty map
    for(int y=0;y<alto;y++){
        for(int x=0;x<ancho;x++) 
			map[x][y]=0;
    }

    // fillout the map matrix with a '+' pattern
    for(int x=ancho/8;x<ancho;x++)
    {
        map[x][alto/2]=1;
    }
    for(int y=alto/8;y<alto*7/8;y++)
    {
        map[ancho/2][y]=1;
    }
    
    // randomly select start and finish locations
    int xA, yA, xB, yB;
    /*switch(rand()%8)
    {
        case 0: xA=0;yA=0;xB=ancho-1;yB=alto-1; break;
        case 1: xA=0;yA=alto-1;xB=ancho-1;yB=0; break;
        case 2: xA=ancho/2-1;yA=alto/2-1;xB=ancho/2+1;yB=alto/2+1; break;
        case 3: xA=ancho/2-1;yA=alto/2+1;xB=ancho/2+1;yB=alto/2-1; break;
        case 4: xA=ancho/2-1;yA=0;xB=ancho/2+1;yB=alto-1; break;
        case 5: xA=ancho/2+1;yA=alto-1;xB=ancho/2-1;yB=0; break;
        case 6: xA=0;yA=alto/2-1;xB=ancho-1;yB=alto/2+1; break;
        case 7: xA=ancho-1;yA=alto/2+1;xB=0;yB=alto/2-1; break;
    }*/xA=ancho-1;yA=10;xB=10;yB=30;

    cout<<"Map Size (X,Y): "<<ancho<<","<<alto<<endl;
    cout<<"Start: "<<xA<<","<<yA<<endl;
    cout<<"Finish: "<<xB<<","<<yB<<endl;
    // get the route
    clock_t start = clock();
    string route=pathFind(xA, yA, xB, yB);
    if(route=="") cout<<"An empty route generated!"<<endl;
    clock_t end = clock();
    double time_elapsed = double(end - start)/CLOCKS_PER_SEC;
    cout<<"Time to calculate the route (ms): "<<time_elapsed<<endl;
    cout<<"Route:"<<endl;
    cout<<route<<endl<<endl;

    // follow the route on the map and display it 
    if(route.length()>0)
    {
        int j; char c;
        int x=xA;
        int y=yA;
        map[x][y]=2;
        for(int i=0;i<route.length();i++)
        {
            c =route.at(i);
            j=atoi(&c); 
            x=x+calc_x[j];
            y=y+calc_y[j];
            map[x][y]=3;
        }
        map[x][y]=4;
    
        // display the map with the route
        for(int y=0;y<alto;y++)
        {
            for(int x=0;x<ancho;x++)
                if(map[x][y]==0)
                    cout<<".";
                else if(map[x][y]==1)
                    cout<<"O"; //obstacle
                else if(map[x][y]==2)
                    cout<<"S"; //start
                else if(map[x][y]==3)
                    cout<<"R"; //route
                else if(map[x][y]==4)
                    cout<<"F"; //finish
            cout<<endl;
        }
    }
    getchar(); // wait for a (Enter) keypress  
    return(0);
}
