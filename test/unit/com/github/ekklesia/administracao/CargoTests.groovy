package com.github.ekklesia.administracao



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Cargo)
class CargoTests {

	void testConstraints() {

		def existingCargo = new Cargo(descricao:"Descricao")

		mockForConstraintsTests(Cargo, [existingCargo])

		// validation should fail if both properties are null
		def cargo = new Cargo()

		assert !cargo.validate()
		println cargo.errors["descricao"]
		assert "nullable" == cargo.errors["descricao"]

	}
}
