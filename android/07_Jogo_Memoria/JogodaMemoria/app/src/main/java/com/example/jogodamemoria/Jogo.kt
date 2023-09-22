package com.example.jogodamemoria

class Jogo {
    var times: MutableList<Int>

    init {
        this.times = mutableListOf(
            R.drawable.corinthians,
            R.drawable.cruzeiro,
            R.drawable.flamengo,
            R.drawable.gremio,
            R.drawable.sfc,
            R.drawable.inter,
            R.drawable.palmeiras,
            R.drawable.spfc,
            R.drawable.corinthians,
            R.drawable.cruzeiro,
            R.drawable.flamengo,
            R.drawable.gremio,
            R.drawable.sfc,
            R.drawable.inter,
            R.drawable.palmeiras,
            R.drawable.spfc,
        )
        this.times.shuffle()
    }
}