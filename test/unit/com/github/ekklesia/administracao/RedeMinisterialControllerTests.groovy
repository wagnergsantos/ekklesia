package com.github.ekklesia.administracao



import org.junit.*
import grails.test.mixin.*

/**
 * RedeMinisterialControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(RedeMinisterialController)
@Mock(RedeMinisterial)
class RedeMinisterialControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/redeMinisterial/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.redeMinisterialInstanceList.size() == 0
        assert model.redeMinisterialInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.redeMinisterialInstance != null
    }

    void testSave() {
        controller.save()

        assert model.redeMinisterialInstance != null
        assert view == '/redeMinisterial/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/redeMinisterial/show/1'
        assert controller.flash.message != null
        assert RedeMinisterial.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/redeMinisterial/list'


        populateValidParams(params)
        def redeMinisterial = new RedeMinisterial(params)

        assert redeMinisterial.save() != null

        params.id = redeMinisterial.id

        def model = controller.show()

        assert model.redeMinisterialInstance == redeMinisterial
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/redeMinisterial/list'


        populateValidParams(params)
        def redeMinisterial = new RedeMinisterial(params)

        assert redeMinisterial.save() != null

        params.id = redeMinisterial.id

        def model = controller.edit()

        assert model.redeMinisterialInstance == redeMinisterial
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/redeMinisterial/list'

        response.reset()


        populateValidParams(params)
        def redeMinisterial = new RedeMinisterial(params)

        assert redeMinisterial.save() != null

        // test invalid parameters in update
        params.id = redeMinisterial.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/redeMinisterial/edit"
        assert model.redeMinisterialInstance != null

        redeMinisterial.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/redeMinisterial/show/$redeMinisterial.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        redeMinisterial.clearErrors()

        populateValidParams(params)
        params.id = redeMinisterial.id
        params.version = -1
        controller.update()

        assert view == "/redeMinisterial/edit"
        assert model.redeMinisterialInstance != null
        assert model.redeMinisterialInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/redeMinisterial/list'

        response.reset()

        populateValidParams(params)
        def redeMinisterial = new RedeMinisterial(params)

        assert redeMinisterial.save() != null
        assert RedeMinisterial.count() == 1

        params.id = redeMinisterial.id

        controller.delete()

        assert RedeMinisterial.count() == 0
        assert RedeMinisterial.get(redeMinisterial.id) == null
        assert response.redirectedUrl == '/redeMinisterial/list'
    }
}
