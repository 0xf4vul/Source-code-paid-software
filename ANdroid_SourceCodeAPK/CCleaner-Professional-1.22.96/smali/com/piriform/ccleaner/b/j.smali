.class public final Lcom/piriform/ccleaner/b/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/b/h;


# instance fields
.field private final a:Lcom/google/firebase/a/a;

.field private final b:Lcom/piriform/ccleaner/b/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/piriform/ccleaner/s/h;Lcom/piriform/ccleaner/b/k;)V
    .locals 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1000
    invoke-static {p1}, Lcom/google/android/gms/internal/dq;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/dq;

    move-result-object v0

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/dq;->g:Lcom/google/firebase/a/a;

    .line 21
    iput-object v0, p0, Lcom/piriform/ccleaner/b/j;->a:Lcom/google/firebase/a/a;

    .line 22
    iput-object p3, p0, Lcom/piriform/ccleaner/b/j;->b:Lcom/piriform/ccleaner/b/k;

    .line 2027
    iget-object v0, p0, Lcom/piriform/ccleaner/b/j;->a:Lcom/google/firebase/a/a;

    const-string/jumbo v1, "os_codename"

    invoke-interface {p2}, Lcom/piriform/ccleaner/s/h;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2028
    iget-object v0, p0, Lcom/piriform/ccleaner/b/j;->a:Lcom/google/firebase/a/a;

    const-string/jumbo v1, "device_name"

    invoke-interface {p2}, Lcom/piriform/ccleaner/s/h;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method private a(Lcom/piriform/ccleaner/b/i;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 67
    iget-object v0, p0, Lcom/piriform/ccleaner/b/j;->a:Lcom/google/firebase/a/a;

    .line 3089
    iget-object v1, p1, Lcom/piriform/ccleaner/b/i;->ap:Ljava/lang/String;

    .line 4000
    iget-object v0, v0, Lcom/google/firebase/a/a;->a:Lcom/google/android/gms/internal/dq;

    .line 5000
    iget-object v2, v0, Lcom/google/android/gms/internal/dq;->f:Lcom/google/android/gms/measurement/AppMeasurement;

    .line 6000
    invoke-static {}, Lcom/google/android/gms/internal/cv;->V()Z

    const-string/jumbo v0, "_iap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v2, Lcom/google/android/gms/measurement/AppMeasurement;->a:Lcom/google/android/gms/internal/dq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ee;->b(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, v2, Lcom/google/android/gms/measurement/AppMeasurement;->a:Lcom/google/android/gms/internal/dq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    invoke-static {}, Lcom/google/android/gms/internal/cv;->y()I

    move-result v0

    const/4 v4, 0x1

    invoke-static {v1, v0, v4}, Lcom/google/android/gms/internal/ee;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    iget-object v1, v2, Lcom/google/android/gms/measurement/AppMeasurement;->a:Lcom/google/android/gms/internal/dq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/dq;->i()Lcom/google/android/gms/internal/ee;

    move-result-object v1

    const-string/jumbo v2, "_ev"

    invoke-virtual {v1, v3, v2, v4, v0}, Lcom/google/android/gms/internal/ee;->a(ILjava/lang/String;Ljava/lang/String;I)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, v2, Lcom/google/android/gms/measurement/AppMeasurement;->a:Lcom/google/android/gms/internal/dq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->h()Lcom/google/android/gms/internal/dv;

    move-result-object v0

    const-string/jumbo v2, "app"

    invoke-virtual {v0, v2, v1, p2}, Lcom/google/android/gms/internal/dv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/b/i;)V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/piriform/ccleaner/b/j;->a(Lcom/piriform/ccleaner/b/i;Landroid/os/Bundle;)V

    .line 34
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/b/i;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    const-string/jumbo v1, "error_cause"

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/piriform/ccleaner/b/j;->a(Lcom/piriform/ccleaner/b/i;Landroid/os/Bundle;)V

    .line 54
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/b/i;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/b/i;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 39
    if-eqz p2, :cond_0

    .line 40
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 41
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3006
    const-string/jumbo v4, " "

    const-string/jumbo v5, "_"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/piriform/ccleaner/b/j;->a(Lcom/piriform/ccleaner/b/i;Landroid/os/Bundle;)V

    .line 46
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/piriform/ccleaner/b/j;->a:Lcom/google/firebase/a/a;

    const-string/jumbo v1, "user_tier"

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/piriform/ccleaner/b/j;->a:Lcom/google/firebase/a/a;

    const-string/jumbo v1, "user_generated_id"

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method
