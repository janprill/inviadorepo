package com.inviado.model.xing

data class Item(
	val contact_distance: Int,
	val display_flag: String,
	val display_name: String,
	val gender: String,
	val hit_reasons: List<String>,
	val id: Int,
	val image: String,
	val is_searcher: Boolean,
	val link: String,
	val location: String,
	val number_of_contacts: Int,
	val number_of_contacts_in_common: Int,
	val occupation: Occupation?,
	val position: Int,
	val show_add_contact: Boolean,
	val sid: String,
	val title: String,
	val tracking_token: String


) {
	override fun toString(): String {
		return "Item(contact_distance=$contact_distance, display_flag='$display_flag', display_name='$display_name', gender='$gender', hit_reasons=$hit_reasons, id=$id, image='$image', is_searcher=$is_searcher, link='$link', location='$location', number_of_contacts=$number_of_contacts, number_of_contacts_in_common=$number_of_contacts_in_common, occupation=$occupation, position=$position, show_add_contact=$show_add_contact, sid='$sid', title='$title', tracking_token='$tracking_token')"
	}
}
