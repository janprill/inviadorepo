package com.inviado.model.dao

import org.jetbrains.exposed.dao.LongEntity
import org.jetbrains.exposed.dao.LongEntityClass
import org.jetbrains.exposed.dao.id.EntityID
import org.jetbrains.exposed.dao.id.LongIdTable

object Links : LongIdTable("links") {
	val text = varchar("text", 255)
	val target = varchar("target", 255)
	val uri = varchar("uri", 255)
	val type = varchar("type", 255)

	val organization = reference("organization", Organizations)
}

class Link(id: EntityID<Long>): LongEntity(id) {
	companion object : LongEntityClass<Link>(Links)

	var text by Links.text
	var target by Links.target
	var uri by Links.uri
	var type by Links.type
	var organization by Link referencedOn Links.organization
}


