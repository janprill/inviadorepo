package com.inviado.model.xing

data class XingPeopleSearch(
    val items: List<Item>
) {
	override fun toString(): String {
		return "XingPeopleSearch(items=$items)"
	}
}
