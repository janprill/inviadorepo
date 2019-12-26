package com.inviado.model.dao

import org.jetbrains.exposed.dao.LongEntity
import org.jetbrains.exposed.dao.LongEntityClass
import org.jetbrains.exposed.dao.id.EntityID
import org.jetbrains.exposed.dao.id.LongIdTable

object Organizations : LongIdTable("organizations") {
	val name = varchar("name", 255)
	val description = text("description")
	val isActive = bool("isActive")
}

class Organization(id: EntityID<Long>) : LongEntity(id) {
	companion object : LongEntityClass<Organization>(Organizations)

	var name by Organizations.name
	var description by Organizations.description
	var isActive by Organizations.isActive
	/**
	 * select * from organizations o join links l on (l.organization_id = o.id);
	 */
	val links by Link referrersOn Links.organization // make sure to use val and referrersOn
}

