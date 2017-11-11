.class public final Lcom/google/android/gms/internal/gw;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/SharedPreferences;

.field public b:Lcom/google/android/gms/internal/np;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Lcom/google/android/gms/internal/oa;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/np;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gw;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gw;->c:Landroid/content/Context;

    const-string/jumbo v0, "com.google.firebase.auth.api.Store.%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/gw;->d:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/np;

    iput-object v0, p0, Lcom/google/android/gms/internal/gw;->b:Lcom/google/android/gms/internal/np;

    new-instance v0, Lcom/google/android/gms/internal/oa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/oa;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gw;->e:Lcom/google/android/gms/internal/oa;

    iget-object v0, p0, Lcom/google/android/gms/internal/gw;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gw;->a:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/firebase/auth/i;
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 0
    const-string/jumbo v0, "com.google.firebase.auth.FIREBASE_USER"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/oa;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/nv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nv;->g()Lcom/google/android/gms/internal/ny;

    move-result-object v1

    const-string/jumbo v0, "type"

    .line 1000
    iget-object v3, v1, Lcom/google/android/gms/internal/ny;->a:Lcom/google/android/gms/internal/ou;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ou;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 0
    if-eqz v0, :cond_4

    const-string/jumbo v0, "type"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ny;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/nv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nv;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "com.google.firebase.auth.internal.DefaultFirebaseUser"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2000
    const-string/jumbo v0, "cachedTokenState"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ny;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/nv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nv;->b()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "applicationName"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ny;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/nv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nv;->b()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "anonymous"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ny;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/nv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nv;->f()Z

    move-result v7

    const-string/jumbo v0, "2"

    const-string/jumbo v3, "version"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ny;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/nv;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 3000
    instance-of v4, v3, Lcom/google/android/gms/internal/nx;

    .line 2000
    if-nez v4, :cond_5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/nv;->b()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_1
    const-string/jumbo v0, "userInfos"

    .line 4000
    iget-object v1, v1, Lcom/google/android/gms/internal/ny;->a:Lcom/google/android/gms/internal/ou;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ou;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ns;

    .line 5000
    iget-object v1, v0, Lcom/google/android/gms/internal/ns;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    .line 2000
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v3, v1

    :goto_2
    if-ge v3, v8, :cond_2

    iget-object v10, p0, Lcom/google/android/gms/internal/gw;->b:Lcom/google/android/gms/internal/np;

    .line 6000
    iget-object v1, v0, Lcom/google/android/gms/internal/ns;->a:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/nv;

    .line 2000
    const-class v11, Lcom/google/android/gms/internal/gt;

    .line 8000
    if-nez v1, :cond_1

    move-object v1, v2

    .line 7000
    :goto_3
    invoke-static {v11}, Lcom/google/android/gms/internal/ow;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2000
    check-cast v1, Lcom/google/android/gms/internal/gt;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 8000
    :cond_1
    new-instance v12, Lcom/google/android/gms/internal/pd;

    invoke-direct {v12, v1}, Lcom/google/android/gms/internal/pd;-><init>(Lcom/google/android/gms/internal/nv;)V

    invoke-virtual {v10, v12, v11}, Lcom/google/android/gms/internal/np;->a(Lcom/google/android/gms/internal/po;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    .line 2000
    :cond_2
    invoke-static {v6}, Lcom/google/firebase/b;->a(Ljava/lang/String;)Lcom/google/firebase/b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/gv;

    invoke-direct {v1, v0, v9}, Lcom/google/android/gms/internal/gv;-><init>(Lcom/google/firebase/b;Ljava/util/List;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/gw;->b:Lcom/google/android/gms/internal/np;

    const-class v3, Lcom/google/android/gms/internal/zzbmn;

    invoke-virtual {v0, v5, v3}, Lcom/google/android/gms/internal/np;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbmn;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gv;->a(Lcom/google/android/gms/internal/zzbmn;)V

    :cond_3
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/gv;->a(Z)Lcom/google/firebase/auth/i;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gv;

    .line 9000
    iput-object v4, v0, Lcom/google/android/gms/internal/gv;->d:Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/gms/internal/oe; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 0
    goto/16 :goto_0

    :catch_0
    move-exception v0

    :cond_4
    move-object v0, v2

    goto/16 :goto_0

    :cond_5
    move-object v4, v0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gw;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
