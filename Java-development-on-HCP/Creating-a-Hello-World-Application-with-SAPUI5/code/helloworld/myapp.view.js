sap.ui.jsview("helloworld.myapp", {

	/** Specifies the Controller belonging to this View. 
	* In the case that it is not implemented, or that "null" is returned, this View does not have a Controller.
	* @memberOf helloworld.myapp
	*/ 
	getControllerName : function() {
		return "helloworld.myapp";
	},

	/** Is initially called once after the Controller has been instantiated. It is the place where the UI is constructed. 
	* Since the Controller is given to this method, its event handlers can be attached right away. 
	* @memberOf helloworld.myapp
	*/ 
	createContent : function(oController) {
		  var aControls = []; 
		  var oButton = new sap.ui.commons.Button({ 
		    id : this.createId("MyButton"), 
		    text : "Hello World" 
		  }); 
		  aControls.push(oButton.attachPress(oController.doIt)); 
		  return aControls;

	}

});
