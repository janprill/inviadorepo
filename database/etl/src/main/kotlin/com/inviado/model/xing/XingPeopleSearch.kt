package com.inviado.model.xing

import com.inviado.model.xing.Item

data class XingPeopleSearch(
    val items: List<Item>
) {
	override fun toString(): String {
		return "XingPeopleSearch(items=$items)"
	}
}
