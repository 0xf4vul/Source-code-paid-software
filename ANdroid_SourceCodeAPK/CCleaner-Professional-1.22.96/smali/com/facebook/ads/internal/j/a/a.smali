.class public Lcom/facebook/ads/internal/j/a/a;
.super Ljava/lang/Object;


# static fields
.field private static i:[I

.field private static final j:Ljava/lang/String;


# instance fields
.field protected final a:Lcom/facebook/ads/internal/j/a/q;

.field protected final b:Lcom/facebook/ads/internal/j/a/d;

.field protected c:Lcom/facebook/ads/internal/j/a/r;

.field protected d:I

.field protected e:I

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 0
    const/16 v0, 0x14

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/ads/internal/j/a/a;->i:[I

    const-class v0, Lcom/facebook/ads/internal/j/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/j/a/a;->j:Ljava/lang/String;

    .line 11000
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v2, :cond_0

    const-string/jumbo v0, "http.keepAlive"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 0
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v2, :cond_1

    .line 12000
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 0
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/internal/j/a/e;

    invoke-direct {v0}, Lcom/facebook/ads/internal/j/a/e;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/j/a/a;->b:Lcom/facebook/ads/internal/j/a/d;

    new-instance v0, Lcom/facebook/ads/internal/j/a/g;

    invoke-direct {v0}, Lcom/facebook/ads/internal/j/a/g;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/j/a/a;->c:Lcom/facebook/ads/internal/j/a/r;

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/facebook/ads/internal/j/a/a;->d:I

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/facebook/ads/internal/j/a/a;->e:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/internal/j/a/a;->k:I

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/j/a/a;->f:Ljava/util/Map;

    new-instance v0, Lcom/facebook/ads/internal/j/a/a$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/j/a/a$1;-><init>(Lcom/facebook/ads/internal/j/a/a;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/j/a/a;->a:Lcom/facebook/ads/internal/j/a/q;

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;[B)I
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/j/a/a;->a:Lcom/facebook/ads/internal/j/a/q;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/j/a/q;->a(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/j/a/a;->a:Lcom/facebook/ads/internal/j/a/q;

    invoke-interface {v0, v1, p2}, Lcom/facebook/ads/internal/j/a/q;->a(Ljava/io/OutputStream;[B)V

    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    return v0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_1
    throw v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Lcom/facebook/ads/internal/j/a/j;Ljava/lang/String;[B)Lcom/facebook/ads/internal/j/a/n;
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 0
    const/4 v7, 0x0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/facebook/ads/internal/j/a/a;->l:Z

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/j/a/a;->b(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v3

    .line 5000
    :try_start_1
    iget v1, p0, Lcom/facebook/ads/internal/j/a/a;->d:I

    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v1, p0, Lcom/facebook/ads/internal/j/a/a;->e:I

    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v1, p0, Lcom/facebook/ads/internal/j/a/a;->a:Lcom/facebook/ads/internal/j/a/q;

    invoke-interface {v1, v3, p2, p3}, Lcom/facebook/ads/internal/j/a/q;->a(Ljava/net/HttpURLConnection;Lcom/facebook/ads/internal/j/a/j;Ljava/lang/String;)V

    .line 6000
    iget-object v1, p0, Lcom/facebook/ads/internal/j/a/a;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/ads/internal/j/a/a;->f:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 0
    :catch_0
    move-exception v1

    move-object v2, v1

    :goto_1
    :try_start_2
    invoke-direct {p0, v3}, Lcom/facebook/ads/internal/j/a/a;->b(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/internal/j/a/n;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 8000
    :try_start_3
    iget v4, v1, Lcom/facebook/ads/internal/j/a/n;->a:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 0
    if-lez v4, :cond_d

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    :goto_2
    return-object v1

    :cond_1
    :try_start_4
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/ads/internal/j/a/a;->l:Z

    iget-object v1, p0, Lcom/facebook/ads/internal/j/a/a;->h:Ljava/util/Set;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/facebook/ads/internal/j/a/a;->h:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    move v2, v6

    :goto_3
    iget-object v1, p0, Lcom/facebook/ads/internal/j/a/a;->g:Ljava/util/Set;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/facebook/ads/internal/j/a/a;->g:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v6

    :goto_4
    instance-of v6, v3, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_4

    if-nez v2, :cond_2

    if-eqz v1, :cond_4

    :cond_2
    :try_start_5
    move-object v0, v3

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v1, v0

    iget-object v6, p0, Lcom/facebook/ads/internal/j/a/a;->h:Ljava/util/Set;

    iget-object v8, p0, Lcom/facebook/ads/internal/j/a/a;->g:Ljava/util/Set;

    .line 7000
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xf

    if-ne v2, v9, :cond_3

    const-string/jumbo v2, "4.0.3"

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    :try_start_6
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v9

    array-length v10, v9

    move v2, v5

    :goto_5
    if-ge v2, v10, :cond_a

    aget-object v1, v9, v2

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    const-string/jumbo v11, "SHA-1"

    invoke-static {v5, v11}, Lcom/facebook/ads/internal/j/a/o;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v6, :cond_8

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v5

    if-eqz v5, :cond_8

    .line 0
    :cond_4
    :goto_6
    :try_start_7
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p4, :cond_5

    move-object/from16 v0, p4

    invoke-direct {p0, v3, v0}, Lcom/facebook/ads/internal/j/a/a;->a(Ljava/net/HttpURLConnection;[B)I

    :cond_5
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getDoInput()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-direct {p0, v3}, Lcom/facebook/ads/internal/j/a/a;->a(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/internal/j/a/n;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v1

    :goto_7
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :cond_6
    move v2, v5

    goto :goto_3

    :cond_7
    move v1, v5

    goto :goto_4

    .line 7000
    :cond_8
    :try_start_8
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    const-string/jumbo v5, "SHA-1"

    invoke-static {v1, v5}, Lcom/facebook/ads/internal/j/a/o;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v8, :cond_9

    invoke-interface {v8, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_9
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    :cond_a
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string/jumbo v2, "Unable to find valid certificate or public key."

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_1
    move-exception v1

    :try_start_9
    throw v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 0
    :catch_2
    move-exception v1

    :try_start_a
    sget-object v2, Lcom/facebook/ads/internal/j/a/a;->j:Ljava/lang/String;

    const-string/jumbo v5, "Unable to validate SSL certificates."

    invoke-static {v2, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v1

    :goto_8
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    throw v1

    :cond_c
    :try_start_b
    new-instance v1, Lcom/facebook/ads/internal/j/a/n;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v2}, Lcom/facebook/ads/internal/j/a/n;-><init>(Ljava/net/HttpURLConnection;[B)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_7

    :cond_d
    :try_start_c
    new-instance v4, Lcom/facebook/ads/internal/j/a/m;

    invoke-direct {v4, v2, v1}, Lcom/facebook/ads/internal/j/a/m;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/internal/j/a/n;)V

    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :catch_3
    move-exception v1

    :try_start_d
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v4, :cond_f

    .line 9000
    :try_start_e
    iget v1, v7, Lcom/facebook/ads/internal/j/a/n;->a:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 0
    if-lez v1, :cond_f

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e
    move-object v1, v4

    goto/16 :goto_2

    :cond_f
    :try_start_f
    new-instance v1, Lcom/facebook/ads/internal/j/a/m;

    invoke-direct {v1, v2, v7}, Lcom/facebook/ads/internal/j/a/m;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/internal/j/a/n;)V

    throw v1

    :catchall_1
    move-exception v1

    if-eqz v4, :cond_11

    .line 10000
    iget v1, v7, Lcom/facebook/ads/internal/j/a/n;->a:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 0
    if-lez v1, :cond_11

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_10
    move-object v1, v4

    goto/16 :goto_2

    :cond_11
    :try_start_10
    new-instance v1, Lcom/facebook/ads/internal/j/a/m;

    invoke-direct {v1, v2, v7}, Lcom/facebook/ads/internal/j/a/m;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/internal/j/a/n;)V

    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :catchall_2
    move-exception v1

    move-object v3, v4

    goto :goto_8

    :catch_4
    move-exception v1

    move-object v2, v1

    move-object v3, v4

    goto/16 :goto_1
.end method

.method private a(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/internal/j/a/n;
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/j/a/a;->a:Lcom/facebook/ads/internal/j/a/q;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/j/a/q;->b(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/internal/j/a/a;->a:Lcom/facebook/ads/internal/j/a/q;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/j/a/q;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/j/a/n;

    invoke-direct {v0, p1, v2}, Lcom/facebook/ads/internal/j/a/n;-><init>(Ljava/net/HttpURLConnection;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_2
    throw v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public static a()Lcom/facebook/ads/internal/j/a/p;
    .locals 1

    new-instance v0, Lcom/facebook/ads/internal/j/a/p;

    invoke-direct {v0}, Lcom/facebook/ads/internal/j/a/p;-><init>()V

    return-object v0
.end method

.method private b(Lcom/facebook/ads/internal/j/a/l;)Lcom/facebook/ads/internal/j/a/n;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/ads/internal/j/a/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/j/a/l;->b()Lcom/facebook/ads/internal/j/a/j;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/internal/j/a/l;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/ads/internal/j/a/l;->d()[B

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/facebook/ads/internal/j/a/a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/j/a/j;Ljava/lang/String;[B)Lcom/facebook/ads/internal/j/a/n;
    :try_end_0
    .catch Lcom/facebook/ads/internal/j/a/m; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Lcom/facebook/ads/internal/j/a/m;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/internal/j/a/m;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/internal/j/a/n;)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private b(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/internal/j/a/n;
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/internal/j/a/a;->a:Lcom/facebook/ads/internal/j/a/q;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/j/a/q;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/j/a/n;

    invoke-direct {v0, p1, v2}, Lcom/facebook/ads/internal/j/a/n;-><init>(Ljava/net/HttpURLConnection;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_2
    throw v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/facebook/ads/internal/j/a/a;->a:Lcom/facebook/ads/internal/j/a/q;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/j/a/q;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a valid URL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(Lcom/facebook/ads/internal/j/a/l;)Lcom/facebook/ads/internal/j/a/n;
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move v2, v3

    :goto_0
    iget v4, p0, Lcom/facebook/ads/internal/j/a/a;->k:I

    if-ge v2, v4, :cond_6

    .line 2000
    :try_start_0
    sget-object v4, Lcom/facebook/ads/internal/j/a/a;->i:[I

    add-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    mul-int/lit16 v4, v4, 0x3e8

    .line 3000
    iput v4, p0, Lcom/facebook/ads/internal/j/a/a;->d:I

    .line 0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/facebook/ads/internal/j/a/l;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/facebook/ads/internal/j/a/l;->b()Lcom/facebook/ads/internal/j/a/j;

    move-result-object v5

    invoke-virtual {p1}, Lcom/facebook/ads/internal/j/a/l;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/facebook/ads/internal/j/a/l;->d()[B

    move-result-object v8

    invoke-direct {p0, v4, v5, v7, v8}, Lcom/facebook/ads/internal/j/a/a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/j/a/j;Ljava/lang/String;[B)Lcom/facebook/ads/internal/j/a/n;
    :try_end_0
    .catch Lcom/facebook/ads/internal/j/a/m; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-eqz v4, :cond_1

    move-object v0, v4

    :goto_1
    return-object v0

    :catch_0
    move-exception v4

    .line 4000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    const-wide/16 v10, 0xa

    add-long/2addr v8, v10

    iget-boolean v5, p0, Lcom/facebook/ads/internal/j/a/a;->l:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/facebook/ads/internal/j/a/a;->e:I

    int-to-long v10, v5

    cmp-long v5, v8, v10

    if-ltz v5, :cond_2

    move v5, v6

    .line 0
    :goto_2
    if-eqz v5, :cond_0

    iget v5, p0, Lcom/facebook/ads/internal/j/a/a;->k:I

    add-int/lit8 v5, v5, -0x1

    if-lt v2, v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/facebook/ads/internal/j/a/a;->a:Lcom/facebook/ads/internal/j/a/q;

    invoke-interface {v5, v4}, Lcom/facebook/ads/internal/j/a/q;->a(Lcom/facebook/ads/internal/j/a/m;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/facebook/ads/internal/j/a/a;->k:I

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_5

    :try_start_1
    iget v5, p0, Lcom/facebook/ads/internal/j/a/a;->d:I

    int-to-long v8, v5

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v5, v3

    .line 4000
    goto :goto_2

    :cond_3
    iget v5, p0, Lcom/facebook/ads/internal/j/a/a;->d:I

    int-to-long v10, v5

    cmp-long v5, v8, v10

    if-ltz v5, :cond_4

    move v5, v6

    goto :goto_2

    :cond_4
    move v5, v3

    goto :goto_2

    .line 0
    :catch_1
    move-exception v0

    throw v4

    :cond_5
    throw v4

    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)Lcom/facebook/ads/internal/j/a/n;
    .locals 1

    new-instance v0, Lcom/facebook/ads/internal/j/a/i;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/j/a/i;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/j/a/a;->b(Lcom/facebook/ads/internal/j/a/l;)Lcom/facebook/ads/internal/j/a/n;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/facebook/ads/internal/j/a/p;)Lcom/facebook/ads/internal/j/a/n;
    .locals 1

    new-instance v0, Lcom/facebook/ads/internal/j/a/k;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/internal/j/a/k;-><init>(Ljava/lang/String;Lcom/facebook/ads/internal/j/a/p;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/j/a/a;->b(Lcom/facebook/ads/internal/j/a/l;)Lcom/facebook/ads/internal/j/a/n;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    if-lez p1, :cond_0

    const/16 v0, 0x12

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Maximum retries must be between 1 and 18"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/facebook/ads/internal/j/a/a;->k:I

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/facebook/ads/internal/j/a/p;Lcom/facebook/ads/internal/j/a/b;)V
    .locals 2

    .prologue
    .line 0
    new-instance v0, Lcom/facebook/ads/internal/j/a/k;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/internal/j/a/k;-><init>(Ljava/lang/String;Lcom/facebook/ads/internal/j/a/p;)V

    .line 1000
    iget-object v1, p0, Lcom/facebook/ads/internal/j/a/a;->b:Lcom/facebook/ads/internal/j/a/d;

    invoke-interface {v1, p0, p3}, Lcom/facebook/ads/internal/j/a/d;->a(Lcom/facebook/ads/internal/j/a/a;Lcom/facebook/ads/internal/j/a/b;)Lcom/facebook/ads/internal/j/a/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/j/a/c;->a(Lcom/facebook/ads/internal/j/a/l;)V

    .line 0
    return-void
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/j/a/a;->d:I

    return-void
.end method
