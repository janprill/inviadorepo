package com.inviado.model.dao

import org.jetbrains.exposed.dao.LongEntity
import org.jetbrains.exposed.dao.LongEntityClass
import org.jetbrains.exposed.dao.id.EntityID
import org.jetbrains.exposed.dao.id.LongIdTable

object Members : LongIdTable("members") {
	val name = varchar("name", 255)
	val type = varchar("type", 255)
	val extId = varchar("extId", 80)
	val displayName = varchar("displayName", 255)
	val title = varchar("title", 255)
	val link = varchar("link", 255)
	val imageUri = varchar("imageUri", 255)
	val sid = varchar("sid", 50)
	val displayFlag = varchar("displayFlag", 40)
	val gender = varchar("gender", 10)
	val location = varchar("location", 100)
}

class Member(id: EntityID<Long>): LongEntity(id) {
	companion object : LongEntityClass<Link>(Links)

	var name by Members.name
	var type by Members.type
	var extId by Members.extId
	var displayName by Members.displayName
	var title by Members.title
	var link by Members.link
	var imageUri by Members.imageUri
	var sid by Members.sid
	var displayFlag by Members.displayFlag
	var gender by Members.gender
	var location by Members.location

}


