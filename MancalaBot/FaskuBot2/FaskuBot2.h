/*
 * ManuPCBot.h
 *
 *  Created on: 15 ene. 2018
 *      Author: manupc
 */

#include "Bot.h"

#ifndef MANUPCBOT_H_
#define MANUPCBOT_H_

class FaskuBot2:Bot {
public:
	FaskuBot2();
	~FaskuBot2();


	void initialize();
	string getName();
	int minimax(const GameState &estado, int prof, bool miTurno, int  alpha, int  beta);
	Move nextMove(const vector<Move> &adversary, const GameState &state);

};

#endif /* MANUPCBOT_H_ */
