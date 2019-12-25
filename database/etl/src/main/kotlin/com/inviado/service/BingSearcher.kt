package com.inviado.service

import com.inviado.model.dao.Link
import com.inviado.model.dao.Links
import com.inviado.model.dao.Organization
import com.inviado.model.dao.Organizations
import org.jetbrains.exposed.sql.Database
import org.jetbrains.exposed.sql.StdOutSqlLogger
import org.jetbrains.exposed.sql.addLogger
import org.jetbrains.exposed.sql.transactions.transaction
import java.util.stream.Collectors

/**
 * For organizations which are already in the database this retrieves data from
 * bing web search.
 */
object BingSearcher {
	@JvmStatic
	fun main(args: Array<String>) {
		Database.connect(
			"jdbc:postgresql://localhost:5432/inviado", driver = "org.postgresql.Driver",
			user = "jan.prill", password = ""
		)
		transaction {
			addLogger (StdOutSqlLogger)

			val allOrganizations = Organization.all()
			allOrganizations.forEach {
				println(it.name)
			}
		}
	}
}
