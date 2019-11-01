/*
 * ManuPCBot.cpp
 *
 *  Created on: 15 ene. 2018
 *      Author: manupc
 */

#include <string>
#include <cstdlib>
#include <iostream>
#include <queue>
#include <vector>
#include <utility>
#include "FaskuBot.h"
using namespace std;
Move sig = M_NONE;
double maximo = 0;
int poda = 0;
Player yo;
int a,b;


struct fmax{
	bool operator()(const pair<int, GameState> &estado1,const pair <int, GameState> &estado2){
		return estado1.second.getScore(yo) < estado2.second.getScore(yo);
	}
};
struct fmin{
	bool operator()(const pair<int, GameState> &estado1,const pair <int, GameState> &estado2){
		return estado1.second.getScore(yo) > estado2.second.getScore(yo);
	}
};


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

inline int FaskuBot::minimax(const GameState &estado, int prof, bool miTurno, int  alpha, int  beta)
{
	//cerr<<"Llamada "<< estado.getScore((Player)estado.getCurrentPlayer())<<endl;
    // Terminating condition. i.e 
    // leaf node is reached
    if (prof == 17 || estado.isFinalState()){//cerr<< "Llego final y tengo " << estado.getScore(estado.getCurrentPlayer())<<endl;c
		//cerr << "Estoy en prof " << prof << "   ";
        return estado.getScore(yo);
	}
 
    if (miTurno)    {	//cerr << "Mi turno con " << prof << endl;
        int best = -1000;
 		priority_queue <pair <int, GameState>, std::vector<pair<int,GameState> >,fmax> cola, t;
        // Recur for left and 
        // right children
        for (int i = 1; i <= 6; i++){
            if (estado.getSeedsAt(estado.getCurrentPlayer(), (Position) i) >0) {
				cola.push(make_pair(i,(estado.simulateMove( (Move) i))));
			}
		}

		while(!cola.empty()){//cerr<<"meh";
				GameState actual = cola.top().second;int pos = cola.top().first;cola.pop();
		        int val = minimax(actual ,prof + 1, actual.getCurrentPlayer()==yo, alpha, beta);
				
				//cerr << "Pruebo mov " << i << " tengo val " << val << "en prof " << prof+1<<endl;
				if(prof==0){b=best;}
		        best = max(best, val);
		        alpha = max(alpha, best);
				if(prof==0 && b!=best)sig=(Move) pos;
 
			
		        // Alpha Beta Pruning
		        if (beta <= alpha){++poda;
		            break;
				}
        }
        return best;
    }
    else
    {//cerr << "No turno con " << prof << endl;
        int best = 1000;
 		priority_queue <pair <int, GameState>, std::vector<pair<int,GameState> >,fmin> cola, t;
        // Recur for left and
        // right children
        for (int i = 1; i <= 6; i++){
            if (estado.getSeedsAt(estado.getCurrentPlayer(), (Position) i) >0) {
				cola.push(make_pair(i,(estado.simulateMove( (Move) i))));
			}
		}

		while(!cola.empty()){//cerr<<"meh2"<<endl;
				GameState actual = cola.top().second;cola.pop();
		        int val = minimax(actual ,prof + 1, actual.getCurrentPlayer()==yo, alpha, beta);
				
				//if(prof==0){b=best;}
		        best = min(best, val);
		        beta = min(beta, best);
				//if(prof==0 && b!=best)sig=(Move) i;
			
 
            // Alpha Beta Pruning
            if (beta <= alpha){++poda;
                break;}
        }
        return best;
    }
}

Move FaskuBot::nextMove(const vector<Move> &adversary, const GameState &state) {


	Player turno= this->getPlayer();
	long timeout= this->getTimeOut();

	Move movimiento= M_NONE;

	// Implementar aquí la selección de la acción a realizar

	// OJO: Recordatorio. NO USAR cin NI cout.
	// Para salidas por consola (debug) utilizar cerr. Ejemplo:
	// cerr<< "Lo que quiero mostrar"<<endl;
	// cerr << "Comienzo mi turno    " << endl;
	yo = state.getCurrentPlayer();
	double t1, t2, t_total;
	int min = -100, maxi = 100;
	// Greedy: Escogerá el movimiento que más puntos le proporcione.
	// En caso de haber varios, se quedará con el que le deje repetir turno
	// o, en otro caso, en primero que haya.
	b=0;
	t1 = clock();
	int puntos= minimax(state, 0, true,min, maxi);
	t2 = clock();
	// Recorremos los 6 movimientos posibles
	t_total = (double) (t2 - t1) / (CLOCKS_PER_SEC);
	maximo = max(maximo,t_total);
	cerr << "He tomado " << t_total << " y termino con " << puntos << " maximo es " << maximo<< " poda es " << poda<< endl;
	movimiento = sig;
	return movimiento;
}
