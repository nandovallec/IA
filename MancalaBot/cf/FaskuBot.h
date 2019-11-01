/*
 * ManuPCBot.h
 *
 *  Created on: 15 ene. 2018
 *      Author: manupc
 */

#include "Bot.h"

#ifndef MANUPCBOT_H_
#define MANUPCBOT_H_

class FaskuBot:Bot {
public:
	FaskuBot();
	~FaskuBot();


	void initialize();
	string getName();
	inline int minimax(const GameState &estado, int prof, bool miTurno, int  alpha, int  beta) __attribute__((always_inline));
	Move nextMove(const vector<Move> &adversary, const GameState &state);
private:
	Player yo;
	Player adv;
};

#endif /* MANUPCBOT_H_ */
