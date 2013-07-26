package com.github.ekklesia.secretaria



import org.junit.*
import grails.test.mixin.*

/**
 * CelulaControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(CelulaController)
@Mock(Celula)
class CelulaControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/celula/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.celulaInstanceList.size() == 0
        assert model.celulaInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.celulaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.celulaInstance != null
        assert view == '/celula/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/celula/show/1'
        assert controller.flash.message != null
        assert Celula.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/celula/list'


        populateValidParams(params)
        def celula = new Celula(params)

        assert celula.save() != null

        params.id = celula.id

        def model = controller.show()

        assert model.celulaInstance == celula
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/celula/list'


        populateValidParams(params)
        def celula = new Celula(params)

        assert celula.save() != null

        params.id = celula.id

        def model = controller.edit()

        assert model.celulaInstance == celula
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/celula/list'

        response.reset()


        populateValidParams(params)
        def celula = new Celula(params)

        assert celula.save() != null

        // test invalid parameters in update
        params.id = celula.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/celula/edit"
        assert model.celulaInstance != null

        celula.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/celula/show/$celula.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        celula.clearErrors()

        populateValidParams(params)
        params.id = celula.id
        params.version = -1
        controller.update()

        assert view == "/celula/edit"
        assert model.celulaInstance != null
        assert model.celulaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/celula/list'

        response.reset()

        populateValidParams(params)
        def celula = new Celula(params)

        assert celula.save() != null
        assert Celula.count() == 1

        params.id = celula.id

        controller.delete()

        assert Celula.count() == 0
        assert Celula.get(celula.id) == null
        assert response.redirectedUrl == '/celula/list'
    }
}
