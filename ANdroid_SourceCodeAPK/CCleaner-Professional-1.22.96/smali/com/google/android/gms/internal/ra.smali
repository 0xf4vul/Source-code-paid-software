.class public final Lcom/google/android/gms/internal/ra;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/rc;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/qy;

.field private final b:Lcom/google/android/gms/internal/xi;

.field private final c:Lcom/google/android/gms/internal/wb;

.field private final d:Lcom/google/android/gms/internal/wb;

.field private final e:Lcom/google/android/gms/internal/wb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/qy;Lcom/google/android/gms/internal/xi;)V
    .locals 3

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ra$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ra$1;-><init>(Lcom/google/android/gms/internal/ra;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ra;->c:Lcom/google/android/gms/internal/wb;

    new-instance v0, Lcom/google/android/gms/internal/ra$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ra$2;-><init>(Lcom/google/android/gms/internal/ra;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ra;->d:Lcom/google/android/gms/internal/wb;

    new-instance v0, Lcom/google/android/gms/internal/ra$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ra$3;-><init>(Lcom/google/android/gms/internal/ra;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ra;->e:Lcom/google/android/gms/internal/wb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ra;->a:Lcom/google/android/gms/internal/qy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ra;->b:Lcom/google/android/gms/internal/xi;

    iget-object v0, p0, Lcom/google/android/gms/internal/ra;->b:Lcom/google/android/gms/internal/xi;

    .line 1000
    const-string/jumbo v1, "/updateActiveView"

    iget-object v2, p0, Lcom/google/android/gms/internal/ra;->c:Lcom/google/android/gms/internal/wb;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/xi;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v1, "/untrackActiveViewUnit"

    iget-object v2, p0, Lcom/google/android/gms/internal/ra;->d:Lcom/google/android/gms/internal/wb;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/xi;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v1, "/visibilityChanged"

    iget-object v2, p0, Lcom/google/android/gms/internal/ra;->e:Lcom/google/android/gms/internal/wb;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/xi;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    .line 0
    const-string/jumbo v1, "Custom JS tracking ad unit: "

    iget-object v0, p0, Lcom/google/android/gms/internal/ra;->a:Lcom/google/android/gms/internal/qy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qy;->g()Lcom/google/android/gms/internal/qw;

    move-result-object v0

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/qw;->c:Ljava/lang/String;

    .line 0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;Z)V
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ra;->b:Lcom/google/android/gms/internal/xi;

    const-string/jumbo v1, "AFMA_updateActiveView"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/xi;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ra;->a:Lcom/google/android/gms/internal/qy;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/qy;->c(Lcom/google/android/gms/internal/rc;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ra;->b:Lcom/google/android/gms/internal/xi;

    .line 3000
    const-string/jumbo v1, "/visibilityChanged"

    iget-object v2, p0, Lcom/google/android/gms/internal/ra;->e:Lcom/google/android/gms/internal/wb;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/xi;->b(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v1, "/untrackActiveViewUnit"

    iget-object v2, p0, Lcom/google/android/gms/internal/ra;->d:Lcom/google/android/gms/internal/wb;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/xi;->b(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v1, "/updateActiveView"

    iget-object v2, p0, Lcom/google/android/gms/internal/ra;->c:Lcom/google/android/gms/internal/wb;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/xi;->b(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    .line 0
    return-void
.end method
