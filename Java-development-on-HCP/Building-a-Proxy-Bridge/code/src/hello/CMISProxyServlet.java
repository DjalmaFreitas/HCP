package hello;

import com.sap.ecm.api.AbstractCmisProxyServlet;

/**
 * Servlet implementation class CMISProxyServlet
 */
public class CMISProxyServlet extends AbstractCmisProxyServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see AbstractCmisProxyServlet#AbstractCmisProxyServlet()
     */
    public CMISProxyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    @Override
    protected String getRepositoryUniqueName() {
        return "testrepo";
    }

    @Override
    //For productive applications, use a secure location to store the secret key.
    protected String getRepositoryKey() {
        return "abcdef12345";
    }

}
