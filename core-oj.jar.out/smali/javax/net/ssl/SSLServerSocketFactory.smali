.class public abstract Ljavax/net/ssl/SSLServerSocketFactory;
.super Ljavax/net/ServerSocketFactory;
.source "SSLServerSocketFactory.java"


# static fields
.field private static defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

.field private static lastVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, -0x1

    sput v0, Ljavax/net/ssl/SSLServerSocketFactory;->lastVersion:I

    .line 46
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljavax/net/ServerSocketFactory;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDefault()Ljavax/net/ServerSocketFactory;
    .locals 13

    .prologue
    const-class v10, Ljavax/net/ssl/SSLServerSocketFactory;

    monitor-enter v10

    .line 84
    :try_start_0
    sget-object v9, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    if-eqz v9, :cond_0

    sget v9, Ljavax/net/ssl/SSLServerSocketFactory;->lastVersion:I

    invoke-static {}, Ljava/security/Security;->getVersion()I

    move-result v11

    if-ne v9, v11, :cond_0

    .line 85
    sget-object v9, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    return-object v9

    .line 88
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/security/Security;->getVersion()I

    move-result v9

    sput v9, Ljavax/net/ssl/SSLServerSocketFactory;->lastVersion:I

    .line 89
    sget-object v8, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    .line 90
    .local v8, "previousDefaultServerSocketFactory":Ljavax/net/ssl/SSLServerSocketFactory;
    const/4 v9, 0x0

    sput-object v9, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    .line 93
    const-string/jumbo v9, "ssl.ServerSocketFactory.provider"

    .line 92
    invoke-static {v9}, Ljavax/net/ssl/SSLSocketFactory;->getSecurityProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "clsName":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 99
    if-eqz v8, :cond_1

    .line 100
    invoke-virtual {v8}, Ljavax/net/ssl/SSLServerSocketFactory;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 99
    if-eqz v9, :cond_1

    .line 101
    sput-object v8, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    .line 102
    sget-object v9, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v10

    return-object v9

    .line 104
    :cond_1
    const/4 v1, 0x0

    .line 105
    .local v1, "cls":Ljava/lang/Class;
    :try_start_2
    const-string/jumbo v9, "setting up default SSLServerSocketFactory"

    invoke-static {v9}, Ljavax/net/ssl/SSLServerSocketFactory;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    :try_start_3
    const-string/jumbo v9, "setting up default SSLServerSocketFactory"

    invoke-static {v9}, Ljavax/net/ssl/SSLServerSocketFactory;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    :try_start_4
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    .line 121
    .end local v1    # "cls":Ljava/lang/Class;
    :cond_2
    :goto_0
    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "class "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, " is loaded"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljavax/net/ssl/SSLServerSocketFactory;->log(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/net/ssl/SSLServerSocketFactory;

    .line 123
    .local v7, "fac":Ljavax/net/ssl/SSLServerSocketFactory;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "instantiated an instance of class "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljavax/net/ssl/SSLServerSocketFactory;->log(Ljava/lang/String;)V

    .line 124
    sput-object v7, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    .line 125
    sget-object v9, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    if-eqz v9, :cond_4

    .line 126
    sget-object v9, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v10

    return-object v9

    .line 110
    .end local v7    # "fac":Ljavax/net/ssl/SSLServerSocketFactory;
    .restart local v1    # "cls":Ljava/lang/Class;
    :catch_0
    move-exception v4

    .line 112
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 113
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_3

    .line 114
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 117
    :cond_3
    if-eqz v0, :cond_2

    .line 118
    const/4 v9, 0x1

    invoke-static {v2, v9, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v1

    .local v1, "cls":Ljava/lang/Class;
    goto :goto_0

    .line 128
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "cls":Ljava/lang/Class;
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v5

    .line 129
    .local v5, "e":Ljava/lang/Exception;
    :try_start_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "SSLServerSocketFactory instantiation failed: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljavax/net/ssl/SSLServerSocketFactory;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 136
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_8
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 137
    .local v3, "context":Ljavax/net/ssl/SSLContext;
    if-eqz v3, :cond_5

    .line 138
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v9

    sput-object v9, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 143
    .end local v3    # "context":Ljavax/net/ssl/SSLContext;
    :cond_5
    :goto_1
    :try_start_9
    sget-object v9, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    if-nez v9, :cond_6

    .line 144
    new-instance v9, Ljavax/net/ssl/DefaultSSLServerSocketFactory;

    .line 145
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string/jumbo v12, "No ServerSocketFactory implementation found"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-direct {v9, v11}, Ljavax/net/ssl/DefaultSSLServerSocketFactory;-><init>(Ljava/lang/Exception;)V

    sput-object v9, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    .line 148
    :cond_6
    sget-object v9, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit v10

    return-object v9

    .end local v2    # "clsName":Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 140
    .restart local v2    # "clsName":Ljava/lang/String;
    :catch_2
    move-exception v6

    .local v6, "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 53
    sget-boolean v0, Ljavax/net/ssl/SSLSocketFactory;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract getDefaultCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getSupportedCipherSuites()[Ljava/lang/String;
.end method
