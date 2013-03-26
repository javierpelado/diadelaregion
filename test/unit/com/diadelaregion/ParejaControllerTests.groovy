package com.diadelaregion



import org.junit.*
import grails.test.mixin.*

/**
 * ParejaControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(ParejaController)
@Mock(Pareja)
class ParejaControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/pareja/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.parejaInstanceList.size() == 0
        assert model.parejaInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.parejaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.parejaInstance != null
        assert view == '/pareja/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/pareja/show/1'
        assert controller.flash.message != null
        assert Pareja.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/pareja/list'


        populateValidParams(params)
        def pareja = new Pareja(params)

        assert pareja.save() != null

        params.id = pareja.id

        def model = controller.show()

        assert model.parejaInstance == pareja
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/pareja/list'


        populateValidParams(params)
        def pareja = new Pareja(params)

        assert pareja.save() != null

        params.id = pareja.id

        def model = controller.edit()

        assert model.parejaInstance == pareja
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/pareja/list'

        response.reset()


        populateValidParams(params)
        def pareja = new Pareja(params)

        assert pareja.save() != null

        // test invalid parameters in update
        params.id = pareja.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/pareja/edit"
        assert model.parejaInstance != null

        pareja.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/pareja/show/$pareja.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        pareja.clearErrors()

        populateValidParams(params)
        params.id = pareja.id
        params.version = -1
        controller.update()

        assert view == "/pareja/edit"
        assert model.parejaInstance != null
        assert model.parejaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/pareja/list'

        response.reset()

        populateValidParams(params)
        def pareja = new Pareja(params)

        assert pareja.save() != null
        assert Pareja.count() == 1

        params.id = pareja.id

        controller.delete()

        assert Pareja.count() == 0
        assert Pareja.get(pareja.id) == null
        assert response.redirectedUrl == '/pareja/list'
    }
}
