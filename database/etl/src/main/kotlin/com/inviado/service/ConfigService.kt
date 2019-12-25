package com.inviado.service

import com.inviado.model.config.InviadoConfig


object ConfigService {
	@JvmStatic
	fun main(args: Array<String>) {
		val inviadoConfig = InviadoConfig()
		println(inviadoConfig.config)
	}
}
