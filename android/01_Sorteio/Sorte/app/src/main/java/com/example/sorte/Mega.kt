package com.example.sorte

import kotlin.random.Random

class Mega {
    private var numeros: MutableSet<Int>

    init {
        this.numeros = mutableSetOf()
    }

    fun sorteio(): MutableSet<Int>{
        this.numeros.clear()
        while (this.numeros.size < 6){
            this.numeros.add(Random.nextInt(1, 61))
        }
        return this.numeros
    }
}