package com.example.diversos

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.widget.Toast

class FoneReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent) {
        Toast.makeText(context, "mexeu no fone!", Toast.LENGTH_SHORT).show()
    }
}