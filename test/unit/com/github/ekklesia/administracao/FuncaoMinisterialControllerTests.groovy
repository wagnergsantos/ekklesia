package com.github.ekklesia.administracao



import org.junit.*
import grails.test.mixin.*

/**
 * FuncaoMinisterialControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(FuncaoMinisterialController)
@Mock(FuncaoMinisterial)
class FuncaoMinisterialControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/funcaoMinisterial/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.funcaoMinisterialInstanceList.size() == 0
        assert model.funcaoMinisterialInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.funcaoMinisterialInstance != null
    }

    void testSave() {
        controller.save()

        assert model.funcaoMinisterialInstance != null
        assert view == '/funcaoMinisterial/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/funcaoMinisterial/show/1'
        assert controller.flash.message != null
        assert FuncaoMinisterial.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/funcaoMinisterial/list'


        populateValidParams(params)
        def funcaoMinisterial = new FuncaoMinisterial(params)

        assert funcaoMinisterial.save() != null

        params.id = funcaoMinisterial.id

        def model = controller.show()

        assert model.funcaoMinisterialInstance == funcaoMinisterial
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/funcaoMinisterial/list'


        populateValidParams(params)
        def funcaoMinisterial = new FuncaoMinisterial(params)

        assert funcaoMinisterial.save() != null

        params.id = funcaoMinisterial.id

        def model = controller.edit()

        assert model.funcaoMinisterialInstance == funcaoMinisterial
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/funcaoMinisterial/list'

        response.reset()


        populateValidParams(params)
        def funcaoMinisterial = new FuncaoMinisterial(params)

        assert funcaoMinisterial.save() != null

        // test invalid parameters in update
        params.id = funcaoMinisterial.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/funcaoMinisterial/edit"
        assert model.funcaoMinisterialInstance != null

        funcaoMinisterial.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/funcaoMinisterial/show/$funcaoMinisterial.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        funcaoMinisterial.clearErrors()

        populateValidParams(params)
        params.id = funcaoMinisterial.id
        params.version = -1
        controller.update()

        assert view == "/funcaoMinisterial/edit"
        assert model.funcaoMinisterialInstance != null
        assert model.funcaoMinisterialInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/funcaoMinisterial/list'

        response.reset()

        populateValidParams(params)
        def funcaoMinisterial = new FuncaoMinisterial(params)

        assert funcaoMinisterial.save() != null
        assert FuncaoMinisterial.count() == 1

        params.id = funcaoMinisterial.id

        controller.delete()

        assert FuncaoMinisterial.count() == 0
        assert FuncaoMinisterial.get(funcaoMinisterial.id) == null
        assert response.redirectedUrl == '/funcaoMinisterial/list'
    }
}
