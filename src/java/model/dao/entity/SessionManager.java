package model.dao.entity;


import java.util.HashMap;
import java.util.Map;

public class SessionManager {

    private static Map<String, String> activeSessions = new HashMap<>();

    public static synchronized boolean isLoggedIn(String usuario) {
        return activeSessions.containsKey(usuario);
    }

    public static synchronized void login(String usuario, String sessionId) {
        activeSessions.put(usuario, sessionId);
    }

    public static synchronized void logout(String usuario) {
        activeSessions.remove(usuario);
    }

    public static synchronized boolean validateSession(String usuario, String sessionId) {
        return sessionId.equals(activeSessions.get(usuario));
    }
}
