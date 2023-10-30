package com.example.diversos

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.TextView

class MainActivity : AppCompatActivity() {
    private lateinit var tela: TelaReceiver
    private lateinit var carregador: CarregadorReceiver
    private lateinit var fone: FoneReceiver
    private lateinit var textView: TextView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        this.textView = findViewById(R.id.textView)

        this.tela = TelaReceiver()
        this.carregador = CarregadorReceiver()
        this.fone = FoneReceiver()
    }

    override fun onResume() {
        super.onResume()
        val itfTela = IntentFilter().apply {
            addAction(Intent.ACTION_USER_PRESENT)
        }
        registerReceiver(this.tela, itfTela)

        val itfCarregador = IntentFilter().apply {
            addAction(Intent.ACTION_POWER_CONNECTED)
            addAction(Intent.ACTION_POWER_DISCONNECTED)
        }
        registerReceiver(this.carregador, itfCarregador)

        val itfFone = IntentFilter().apply {
            addAction(Intent.ACTION_HEADSET_PLUG)
        }
        registerReceiver(this.fone, itfFone)
    }

    override fun onStop() {
        super.onStop()
        unregisterReceiver(this.tela)
        unregisterReceiver(this.carregador)
    }

    override fun onDestroy() {
        super.onDestroy()
        unregisterReceiver(this.fone)
    }

    inner class CarregadorReceiver: BroadcastReceiver(){
        override fun onReceive(context: Context?, intent: Intent?) {
            this@MainActivity.textView.text = intent?.action
        }
    }
}