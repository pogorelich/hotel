/**
 * Agenda.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package ubuntu.axis.services.Agenda;

public interface Agenda extends java.rmi.Remote {
    public void insert(es.uc3m.www.WS.Agenda.Telefono in0) throws java.rmi.RemoteException;
    public es.uc3m.www.WS.Agenda.Telefono[] query(java.lang.String in0) throws java.rmi.RemoteException;
}
