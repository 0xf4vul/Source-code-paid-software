.class public final Lcom/google/firebase/iid/d;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/iid/d;",
            ">;"
        }
    .end annotation
.end field

.field static c:Lcom/google/firebase/iid/h;

.field static d:Lcom/google/firebase/iid/f;

.field public static g:Ljava/lang/String;


# instance fields
.field b:Landroid/content/Context;

.field e:Ljava/security/KeyPair;

.field f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/d;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/firebase/iid/d;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/d;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/iid/d;->f:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/firebase/iid/d;
    .locals 4

    const-class v2, Lcom/google/firebase/iid/d;

    monitor-enter v2

    if-nez p1, :cond_2

    :try_start_0
    const-string/jumbo v0, ""

    :goto_0
    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    move-object v1, v0

    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v0, Lcom/google/firebase/iid/d;->c:Lcom/google/firebase/iid/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/firebase/iid/h;

    invoke-direct {v0, v3}, Lcom/google/firebase/iid/h;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/firebase/iid/d;->c:Lcom/google/firebase/iid/h;

    new-instance v0, Lcom/google/firebase/iid/f;

    invoke-direct {v0, v3}, Lcom/google/firebase/iid/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/firebase/iid/d;->d:Lcom/google/firebase/iid/f;

    :cond_0
    invoke-static {v3}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/iid/d;->g:Ljava/lang/String;

    sget-object v0, Lcom/google/firebase/iid/d;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/d;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/firebase/iid/d;

    invoke-direct {v0, v3, v1}, Lcom/google/firebase/iid/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v3, Lcom/google/firebase/iid/d;->a:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    return-object v0

    :cond_2
    :try_start_1
    const-string/jumbo v0, "subtype"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public static c()Lcom/google/firebase/iid/h;
    .locals 1

    sget-object v0, Lcom/google/firebase/iid/d;->c:Lcom/google/firebase/iid/h;

    return-object v0
.end method

.method public static d()Lcom/google/firebase/iid/f;
    .locals 1

    sget-object v0, Lcom/google/firebase/iid/d;->d:Lcom/google/firebase/iid/f;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string/jumbo v0, "scope"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "sender"

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/google/firebase/iid/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    :goto_0
    const-string/jumbo v1, "legacy.register"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "subscription"

    invoke-virtual {p3, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "subtype"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "X-subscription"

    invoke-virtual {p3, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "X-subtype"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/google/firebase/iid/d;->d:Lcom/google/firebase/iid/f;

    invoke-virtual {p0}, Lcom/google/firebase/iid/d;->a()Ljava/security/KeyPair;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/google/firebase/iid/f;->a(Landroid/os/Bundle;Ljava/security/KeyPair;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/iid/f;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/google/firebase/iid/d;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method final a()Ljava/security/KeyPair;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/iid/d;->e:Ljava/security/KeyPair;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/firebase/iid/d;->c:Lcom/google/firebase/iid/h;

    iget-object v1, p0, Lcom/google/firebase/iid/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/h;->d(Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/d;->e:Ljava/security/KeyPair;

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/iid/d;->e:Ljava/security/KeyPair;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/firebase/iid/d;->c:Lcom/google/firebase/iid/h;

    iget-object v1, p0, Lcom/google/firebase/iid/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/h;->a(Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/d;->e:Ljava/security/KeyPair;

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/iid/d;->e:Ljava/security/KeyPair;

    return-object v0
.end method

.method public final b()V
    .locals 2

    sget-object v0, Lcom/google/firebase/iid/d;->c:Lcom/google/firebase/iid/h;

    iget-object v1, p0, Lcom/google/firebase/iid/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/h;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/iid/d;->e:Ljava/security/KeyPair;

    return-void
.end method
