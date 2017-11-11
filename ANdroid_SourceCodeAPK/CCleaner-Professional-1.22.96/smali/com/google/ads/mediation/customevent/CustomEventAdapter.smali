.class public final Lcom/google/ads/mediation/customevent/CustomEventAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/mediation/d;
.implements Lcom/google/ads/mediation/f;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/customevent/CustomEventAdapter$b;,
        Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/ads/mediation/d",
        "<",
        "Lcom/google/android/gms/ads/mediation/customevent/c;",
        "Lcom/google/ads/mediation/customevent/c;",
        ">;",
        "Lcom/google/ads/mediation/f",
        "<",
        "Lcom/google/android/gms/ads/mediation/customevent/c;",
        "Lcom/google/ads/mediation/customevent/c;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/google/ads/mediation/customevent/a;

.field b:Lcom/google/ads/mediation/customevent/b;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2e

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Could not instantiate custom event adapter: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/aeb;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/android/gms/ads/mediation/customevent/c;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/ads/mediation/customevent/c;

    return-object v0
.end method

.method public final synthetic a(Lcom/google/ads/mediation/e;Lcom/google/ads/mediation/h;Lcom/google/ads/mediation/i;)V
    .locals 1

    .prologue
    .line 0
    check-cast p2, Lcom/google/ads/mediation/customevent/c;

    check-cast p3, Lcom/google/android/gms/ads/mediation/customevent/c;

    .line 1000
    iget-object v0, p2, Lcom/google/ads/mediation/customevent/c;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/customevent/a;

    iput-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->a:Lcom/google/ads/mediation/customevent/a;

    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->a:Lcom/google/ads/mediation/customevent/a;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/ads/a$a;->d:Lcom/google/ads/a$a;

    invoke-interface {p1, v0}, Lcom/google/ads/mediation/e;->a(Lcom/google/ads/a$a;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p2, Lcom/google/ads/mediation/customevent/c;->a:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/mediation/customevent/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    new-instance v0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;-><init>(Lcom/google/ads/mediation/customevent/CustomEventAdapter;Lcom/google/ads/mediation/e;)V

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/ads/mediation/g;Lcom/google/ads/mediation/h;Lcom/google/ads/mediation/i;)V
    .locals 1

    .prologue
    .line 0
    check-cast p2, Lcom/google/ads/mediation/customevent/c;

    check-cast p3, Lcom/google/android/gms/ads/mediation/customevent/c;

    .line 2000
    iget-object v0, p2, Lcom/google/ads/mediation/customevent/c;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/customevent/b;

    iput-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->b:Lcom/google/ads/mediation/customevent/b;

    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->b:Lcom/google/ads/mediation/customevent/b;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/ads/a$a;->d:Lcom/google/ads/a$a;

    invoke-interface {p1, v0}, Lcom/google/ads/mediation/g;->b(Lcom/google/ads/a$a;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p2, Lcom/google/ads/mediation/customevent/c;->a:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/ads/mediation/customevent/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 3000
    :cond_1
    new-instance v0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$b;

    invoke-direct {v0, p0, p0, p1}, Lcom/google/ads/mediation/customevent/CustomEventAdapter$b;-><init>(Lcom/google/ads/mediation/customevent/CustomEventAdapter;Lcom/google/ads/mediation/customevent/CustomEventAdapter;Lcom/google/ads/mediation/g;)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/ads/mediation/customevent/c;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/ads/mediation/customevent/c;

    return-object v0
.end method

.method public final c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->c:Landroid/view/View;

    return-object v0
.end method
