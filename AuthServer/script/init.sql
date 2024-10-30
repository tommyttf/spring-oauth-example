CREATE TABLE client (
    id varchar(255) NOT NULL,
    clientId varchar(255) NOT NULL,
    clientIdIssuedAt timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
    clientSecret varchar(255) DEFAULT NULL,
    clientSecretExpiresAt timestamp DEFAULT NULL,
    clientName varchar(255) NOT NULL,
    clientAuthenticationMethods text NOT NULL,
    authorizationGrantTypes text NOT NULL,
    redirectUris text DEFAULT NULL,
    postLogoutRedirectUris text DEFAULT NULL,
    scopes text NOT NULL,
    clientSettings text NOT NULL,
    tokenSettings text NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO `bbtest`.`client` (`id`, `clientId`, `clientSecret`, `clientName`, `clientAuthenticationMethods`, `authorizationGrantTypes`, `redirectUris`, `scopes`, `clientSettings`, `tokenSettings`)
VALUES ('articles-client', 'articles-client', '$2a$10$7fMwoMaFJaG2G7E/ap8UsejDgK8UDbIbpDcItI.Onn7Y8uuuq13AW', 'Articles Client', 'client_secret_basic', 'authorization_code,refresh_token', 'http://127.0.0.1:8080/login/oauth2/code/articles-client-oidc,http://127.0.0.1:8080/authorized', 'openid,articles.read', '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"settings.client.require-proof-key\":false,\"settings.client.require-authorization-consent\":false}', '{\"@class\":\"java.util.Collections$UnmodifiableMap\",\"settings.token.reuse-refresh-tokens\":true,\"settings.token.id-token-signature-algorithm\":[\"org.springframework.security.oauth2.jose.jws.SignatureAlgorithm\",\"RS256\"],\"settings.token.authorization-code-time-to-live\":[\"java.time.Duration\",300.000000000],\"settings.token.access-token-time-to-live\":[\"java.time.Duration\",300.000000000],\"settings.token.access-token-format\":{\"@class\":\"org.springframework.security.oauth2.server.authorization.settings.OAuth2TokenFormat\",\"value\":\"self-contained\"},\"settings.token.refresh-token-time-to-live\":[\"java.time.Duration\",3600.000000000]}');


CREATE TABLE authorization (
    id varchar(255) NOT NULL,
    registeredClientId varchar(255) NOT NULL,
    principalName varchar(255) NOT NULL,
    authorizationGrantType varchar(255) NOT NULL,
    authorizedScopes text DEFAULT NULL,
    attributes text DEFAULT NULL,
    state varchar(500) DEFAULT NULL,
    authorizationCodeValue text DEFAULT NULL,
    authorizationCodeIssuedAt timestamp DEFAULT NULL,
    authorizationCodeExpiresAt timestamp DEFAULT NULL,
    authorizationCodeMetadata text DEFAULT NULL,
    accessTokenValue text DEFAULT NULL,
    accessTokenIssuedAt timestamp DEFAULT NULL,
    accessTokenExpiresAt timestamp DEFAULT NULL,
    accessTokenMetadata text DEFAULT NULL,
    accessTokenType varchar(255) DEFAULT NULL,
    accessTokenScopes text DEFAULT NULL,
    refreshTokenValue text DEFAULT NULL,
    refreshTokenIssuedAt timestamp DEFAULT NULL,
    refreshTokenExpiresAt timestamp DEFAULT NULL,
    refreshTokenMetadata text DEFAULT NULL,
    oidcIdTokenValue text DEFAULT NULL,
    oidcIdTokenIssuedAt timestamp DEFAULT NULL,
    oidcIdTokenExpiresAt timestamp DEFAULT NULL,
    oidcIdTokenMetadata text DEFAULT NULL,
    oidcIdTokenClaims text DEFAULT NULL,
    userCodeValue text DEFAULT NULL,
    userCodeIssuedAt timestamp DEFAULT NULL,
    userCodeExpiresAt timestamp DEFAULT NULL,
    userCodeMetadata text DEFAULT NULL,
    deviceCodeValue text DEFAULT NULL,
    deviceCodeIssuedAt timestamp DEFAULT NULL,
    deviceCodeExpiresAt timestamp DEFAULT NULL,
    deviceCodeMetadata text DEFAULT NULL,
    PRIMARY KEY (id)
);