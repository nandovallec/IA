/*
 * ManuPCBot.cpp
 *
 *  Created on: 15 ene. 2018
 *      Author: manupc
 */

#include <string>

#include <iostream>

#include "FaskuBot.h"
using namespace std;
Move sig = M_NONE;
double maximo = 0;
int exp = 0;
int m_exp = 0;
int poda = 0;
int n_hijos,hueco;
int jugados = 150000;
//Player yo;
float a,b, total2, aux, total;
	double t1, t2, t_total;
int PROF_MAX = 10;

float mi_gr = 2.4;
float tu_gr = 3.90;
float izq = 1.4;
float camp = 1.5;										//Cambiar a 1 para ganar vladis pero nodos
float im, ex, rob, aux2, ex2;
int camp_ad[6];

FaskuBot::FaskuBot() {
	// Inicializar las variables necesarias para ejecutar la partida

}

FaskuBot::~FaskuBot() {
	// Liberar los recursos reservados (memoria, ficheros, etc.)
}

void FaskuBot::initialize() {
	// Inicializar el bot antes de jugar una partida
}

string FaskuBot::getName() {
	return "FaskuBot"; // Sustituir por el nombre del bot
}

int FaskuBot::minimax(const GameState &estado, int prof, bool miTurno, int  alpha, int  beta)
{	
	//cerr<<"Llamada "<< estado.getScore((Player)estado.getCurrentPlayer())<<endl;
    // Terminating condition. i.e 
    // leaf node is reached
    if (exp > 170000||prof == PROF_MAX  || estado.isFinalState()){//cerr<< "Llego final y tengo " << estado.getScore(estado.getCurrentPlayer())<<endl;c
		total2 = estado.getSeedsAt( yo, (Position) 0)*mi_gr;
		hueco = 0;
		aux2 = 0;
		ex2 = 0;
		ex = 0;
		total = 0;
		rob = 0;
		//int huecos=0, aux;
		//for(int i = 1; i <= 6; i++){

		camp_ad[0] = estado.getSeedsAt(adv, (Position) 1);
		camp_ad[1] = estado.getSeedsAt(adv, (Position) 2);
		camp_ad[2] = estado.getSeedsAt(adv, (Position) 3);
		camp_ad[3] = estado.getSeedsAt(adv, (Position) 4);
		camp_ad[4] = estado.getSeedsAt(adv, (Position) 5);
		camp_ad[5] = estado.getSeedsAt(adv, (Position) 6);

			aux  = estado.getSeedsAt(yo, (Position) 1)*izq;
			if(aux != 0){if(aux==6)ex++;
				if(camp_ad[0] > 0 && camp_ad[0] < 6){
					if(camp_ad[0+camp_ad[0]] == 0) rob= camp_ad[0];
				}else if(camp_ad[0] == 6)ex2++;
			}
			total+=aux;

			aux = estado.getSeedsAt(yo, (Position) 2);
			if(aux != 0){if(aux==5)ex++;
				if(camp_ad[1] > 0 && camp_ad[1] < 5){
						if(camp_ad[1+camp_ad[1]] == 0) rob= camp_ad[1];
					}else if(camp_ad[1] > 0 == 5)ex2++;
			}
			total+=aux;

			aux = estado.getSeedsAt(yo, (Position) 3);
			if(aux != 0){if(aux==4)ex++;
				if(camp_ad[2] > 0 && camp_ad[2] < 4){
						if(camp_ad[2+camp_ad[2]] == 0) rob= camp_ad[2];
					}else if(camp_ad[2] == 4)ex2++;

			}
			total+=aux;

			aux = estado.getSeedsAt(yo, (Position) 4);
			if(aux != 0){if(aux==3)ex++;
				if(camp_ad[3] > 0 && camp_ad[3] < 3){
						if(camp_ad[3+camp_ad[3]] == 0) rob= camp_ad[3];
					}else if(camp_ad[3] == 3)ex2++;

}
			total+=aux;

			aux = estado.getSeedsAt(yo, (Position) 5);
			if(aux != 0){if(aux==2)ex++;
				if(camp_ad[4] > 0 && camp_ad[4] < 2){
						if(camp_ad[4+camp_ad[4]] == 0) rob= camp_ad[4];
					}else if(camp_ad[4] == 2)ex2++;

}
			total+=aux;

			aux = estado.getSeedsAt(yo, (Position) 6);
			if(aux != 0){if(aux==1)ex++;
				if(camp_ad[5] == 1)ex2++;
}
			total+=aux;
			
			//if(aux == 0)huecos++;	cerr << "sumo " <<aux <<endl;
		
	//	}
		//cerr << "Estoy en prof " << prof << "   ";*/
	return total2*mi_gr+total*camp-estado.getScore(adv)*tu_gr+ex*9-rob*21-ex2*4;//+huecos;
		 //return estado.getScore(yo); 
	}
 
    if (miTurno)    {	//cerr << "Mi turno con " << prof << endl;
        int best = -1000;
 
        // Recur for left and 
        // right children
        for (int i = 1; i <= 6; i++)
        {
            if (estado.getSeedsAt(estado.getCurrentPlayer(), (Position) i) >0) {
		++exp;im=i;
				GameState hijo= estado.simulateMove( (Move) i);
		        int val = minimax(hijo ,prof + 1, hijo.getCurrentPlayer()==yo, alpha, beta);
				//cerr << "Pruebo mov " << i << " tengo val " << val << "en prof " << prof+1<<endl;
				//if(prof==0){b=best;}
		        best = max(best, val);
		        alpha = max(alpha, best);
				if(prof==0 && b!=best){b=best;sig=(Move) i;}
 
			}
            // Alpha Beta Pruning
            if (beta <= alpha){//++poda;
                break;
			}
        }
        return best;
    }
   //cerr << "No turno con " << prof << endl;
        int best = 1000;
 
        // Recur for left and
        // right children
        for (int i = 1; i <= 6; i++)
        {
			if (estado.getSeedsAt(estado.getCurrentPlayer(), (Position) i) >0) {
++exp;im=i;
				GameState hijo= estado.simulateMove( (Move) i);
		        int val = minimax(hijo ,prof + 1, hijo.getCurrentPlayer()==yo, alpha, beta);
				//if(prof==0){b=best;}
		        best = min(best, val);
		        beta = min(beta, best);
				//if(prof==0 && b!=best)sig=(Move) i;
			}
 
            // Alpha Beta Pruning
            if (beta <= alpha){//++poda;
                break;}
        }
        return best;
    
}

Move FaskuBot::nextMove(const vector<Move> &adversary, const GameState &state) {


	yo= this->getPlayer();
	adv = (Player)((yo+1)%2);
	//long timeout= this->getTimeOut();


	// Implementar aquí la selección de la acción a realizar


	// Para salidas por consola (debug) utilizar cerr. Ejemplo:
	// cerr<< "Lo que quiero mostrar"<<endl;
	// cerr << "Comienzo mi turno    " << endl;
//	yo = state.getCurrentPlayer();
	n_hijos = 0;
       
	exp = 0;
//	int min = -100, maxi = 100;
	// Greedy: Escogerá el movimiento que más puntos le proporcione.
	// En caso de haber varios, se quedará con el que le deje repetir turno
	// o, en otro caso, en primero que haya.
	b=-1000;
	t1 = clock();
 for (int i = 1; i <= 6; i++)
        {
	if (state.getSeedsAt(yo, (Position) i) >0) {
		++n_hijos;
	}}
	//int puntos= 
	if(n_hijos <= 4 ) PROF_MAX = 12;


minimax(state, 0, true,-100, 100);
	t2 = clock();
	// Recorremos los 6 movimientos posibles
	t_total = (double) (t2 - t1) / (CLOCKS_PER_SEC);
	maximo = max(maximo,t_total);
	m_exp = max(m_exp, exp);
	jugados = exp;
	PROF_MAX = 11;
	cerr << "-------------------He tomado " << t_total<<" max " <<maximo<<" explorados " << exp << " maximo " << m_exp<< " hijos " <<n_hijos << endl; 

	return sig;
}
