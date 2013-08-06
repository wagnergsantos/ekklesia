package com.github.ekklesia.util



import org.junit.*
import grails.test.mixin.*

/**
 * UploadFileControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(UploadFileController)
@Mock(UploadFile)
class UploadFileControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/uploadFile/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.uploadFileInstanceList.size() == 0
        assert model.uploadFileInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.uploadFileInstance != null
    }

    void testSave() {
        controller.save()

        assert model.uploadFileInstance != null
        assert view == '/uploadFile/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/uploadFile/show/1'
        assert controller.flash.message != null
        assert UploadFile.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/uploadFile/list'


        populateValidParams(params)
        def uploadFile = new UploadFile(params)

        assert uploadFile.save() != null

        params.id = uploadFile.id

        def model = controller.show()

        assert model.uploadFileInstance == uploadFile
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/uploadFile/list'


        populateValidParams(params)
        def uploadFile = new UploadFile(params)

        assert uploadFile.save() != null

        params.id = uploadFile.id

        def model = controller.edit()

        assert model.uploadFileInstance == uploadFile
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/uploadFile/list'

        response.reset()


        populateValidParams(params)
        def uploadFile = new UploadFile(params)

        assert uploadFile.save() != null

        // test invalid parameters in update
        params.id = uploadFile.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/uploadFile/edit"
        assert model.uploadFileInstance != null

        uploadFile.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/uploadFile/show/$uploadFile.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        uploadFile.clearErrors()

        populateValidParams(params)
        params.id = uploadFile.id
        params.version = -1
        controller.update()

        assert view == "/uploadFile/edit"
        assert model.uploadFileInstance != null
        assert model.uploadFileInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/uploadFile/list'

        response.reset()

        populateValidParams(params)
        def uploadFile = new UploadFile(params)

        assert uploadFile.save() != null
        assert UploadFile.count() == 1

        params.id = uploadFile.id

        controller.delete()

        assert UploadFile.count() == 0
        assert UploadFile.get(uploadFile.id) == null
        assert response.redirectedUrl == '/uploadFile/list'
    }
}
