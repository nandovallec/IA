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
//Player yo;
int a,b, total2, aux, total;
	double t1, t2, t_total;
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
    if (prof == 13  || estado.isFinalState()){//cerr<< "Llego final y tengo " << estado.getScore(estado.getCurrentPlayer())<<endl;c
		total2 = estado.getSeedsAt( yo, (Position) 0);
		//int huecos=0, aux;
		//for(int i = 1; i <= 6; i++){
			aux =estado.getSeedsAt(yo, (Position) 1);
			total = aux+total2;
			total += estado.getSeedsAt(yo, (Position) 2);
			total += estado.getSeedsAt(yo, (Position) 3);
			total += estado.getSeedsAt(yo, (Position) 4);
			total += estado.getSeedsAt(yo, (Position) 5);
			total += estado.getSeedsAt(yo, (Position) 6);
			//if(aux == 0)huecos++;
	//	}
		//cerr << "Estoy en prof " << prof << "   ";*/
        return total2*2.25+total*1.2-estado.getScore(adv)*1.7+aux*.75;//+huecos;
		 //return estado.getScore(yo); 
	}
 
    if (miTurno)    {	//cerr << "Mi turno con " << prof << endl;
        int best = -1000;
 
        // Recur for left and 
        // right children
        for (int i = 1; i <= 6; i++)
        {
            if (estado.getSeedsAt(estado.getCurrentPlayer(), (Position) i) >0) {
		++exp;
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
    else
    {//cerr << "No turno con " << prof << endl;
        int best = 1000;
 
        // Recur for left and
        // right children
        for (int i = 1; i <= 6; i++)
        {
			if (estado.getSeedsAt(estado.getCurrentPlayer(), (Position) i) >0) {
++exp;
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

	exp = 0;
//	int min = -100, maxi = 100;
	// Greedy: Escogerá el movimiento que más puntos le proporcione.
	// En caso de haber varios, se quedará con el que le deje repetir turno
	// o, en otro caso, en primero que haya.
	b=-1000;
	t1 = clock();
	//int puntos= 
minimax(state, 0, true,-100, 100);
	t2 = clock();
	// Recorremos los 6 movimientos posibles
	t_total = (double) (t2 - t1) / (CLOCKS_PER_SEC);
	maximo = max(maximo,t_total);
	m_exp = max(m_exp, exp);
	cerr << "-------------------He tomado " << maximo<< " explorados " << m_exp << endl; //" y termino con " << puntos << " maximo es " << maximo<< " poda es " << poda << " explorado " << exp <<endl;

	return sig;
}
