package com.example.sorte

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.view.View
import android.view.View.OnClickListener
import android.view.View.OnLongClickListener
import android.widget.Button
import android.widget.TextView

class MainActivity : AppCompatActivity() {
    private lateinit var texto: TextView
    private lateinit var button: Button

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        this.texto = this.findViewById(R.id.tvNumeros)
        this.button = this.findViewById(R.id.button)

        this.texto.text = Mega().sorteio().toString()

        this.button.setOnClickListener(TrataClick())
        this.button.setOnLongClickListener(TrataClickLong())

//        this.button.setOnClickListener{ sorteia() }

//        this.button.setOnClickListener{
//            this.texto.text = Mega().sorteio().toString()
//        }
    }

//    fun sorteia(){
//        this.texto.text = Mega().sorteio().toString()
//    }

    inner class TrataClick: OnClickListener{
        override fun onClick(p0: View?) {
            this@MainActivity.texto.text = Mega().sorteio().toString()
            Log.i("APP_SORTE", "Clicou")
        }

    }

    inner class TrataClickLong: OnLongClickListener{
        override fun onLongClick(p0: View?): Boolean {
            this@MainActivity.texto.text = ""
            Log.i("APP_SORTE", "Clicooooooooou")
            return true
        }
    }

} // main