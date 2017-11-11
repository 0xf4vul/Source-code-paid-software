.class public Lcom/facebook/ads/internal/m/an;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/m/an$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/facebook/ads/internal/m/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/facebook/ads/internal/m/an$a;

.field private d:Ljava/util/Map;
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

.field private e:Ljava/util/Map;
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

.field private f:Lcom/facebook/ads/internal/j/a/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/facebook/ads/internal/m/an;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/m/an;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/m/an;->c:Ljava/util/Set;

    const-string/jumbo v1, "#"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/ads/internal/m/an;->c:Ljava/util/Set;

    const-string/jumbo v1, "null"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/internal/m/an;-><init>(Ljava/util/Map;B)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/internal/m/an;-><init>(Ljava/util/Map;B)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;B)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/internal/m/an;->d:Ljava/util/Map;

    iput-object v1, p0, Lcom/facebook/ads/internal/m/an;->e:Ljava/util/Map;

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string/jumbo v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "&"

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "?"

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 0
    invoke-static {}, Lcom/facebook/ads/internal/m/am;->a()Lcom/facebook/ads/internal/j/a/a;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/facebook/ads/internal/m/an;->e:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/ads/internal/m/an;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-virtual {v1, p1}, Lcom/facebook/ads/internal/j/a/a;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/j/a/n;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/internal/m/an;->f:Lcom/facebook/ads/internal/j/a/n;

    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/internal/m/an;->f:Lcom/facebook/ads/internal/j/a/n;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/internal/m/an;->f:Lcom/facebook/ads/internal/j/a/n;

    .line 2000
    iget v1, v1, Lcom/facebook/ads/internal/j/a/n;->a:I

    .line 0
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_1
    return v0

    :cond_2
    new-instance v2, Lcom/facebook/ads/internal/j/a/p;

    invoke-direct {v2}, Lcom/facebook/ads/internal/j/a/p;-><init>()V

    iget-object v3, p0, Lcom/facebook/ads/internal/m/an;->e:Ljava/util/Map;

    .line 1000
    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/j/a/p;->putAll(Ljava/util/Map;)V

    .line 0
    invoke-virtual {v1, p1, v2}, Lcom/facebook/ads/internal/j/a/a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/j/a/p;)Lcom/facebook/ads/internal/j/a/n;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/internal/m/an;->f:Lcom/facebook/ads/internal/j/a/n;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/facebook/ads/internal/m/an;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Error opening url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/facebook/ads/internal/m/b;->a()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "analog"

    invoke-static {v0}, Lcom/facebook/ads/internal/m/u;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/internal/m/an;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 0
    check-cast p1, [Ljava/lang/String;

    .line 4000
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/facebook/ads/internal/m/an;->c:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Lcom/facebook/ads/internal/m/an;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/m/an;->d:Ljava/util/Map;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/internal/m/an;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/internal/m/an;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/m/an;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    :cond_3
    const/4 v1, 0x1

    :goto_2
    add-int/lit8 v2, v1, 0x1

    const/4 v4, 0x2

    if-gt v1, v4, :cond_4

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/m/an;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Lcom/facebook/ads/internal/m/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/m/an;->f:Lcom/facebook/ads/internal/j/a/n;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/m/c;-><init>(Lcom/facebook/ads/internal/j/a/n;)V

    goto :goto_0

    :cond_4
    move-object v0, v3

    .line 0
    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method protected onCancelled()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/m/an;->a:Lcom/facebook/ads/internal/m/an$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/m/an;->a:Lcom/facebook/ads/internal/m/an$a;

    invoke-interface {v0}, Lcom/facebook/ads/internal/m/an$a;->a()V

    :cond_0
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 0
    check-cast p1, Lcom/facebook/ads/internal/m/c;

    .line 3000
    iget-object v0, p0, Lcom/facebook/ads/internal/m/an;->a:Lcom/facebook/ads/internal/m/an$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/m/an;->a:Lcom/facebook/ads/internal/m/an$a;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/m/an$a;->a(Lcom/facebook/ads/internal/m/c;)V

    .line 0
    :cond_0
    return-void
.end method
