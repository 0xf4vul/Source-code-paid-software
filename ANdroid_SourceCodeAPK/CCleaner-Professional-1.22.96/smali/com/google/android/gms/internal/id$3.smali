.class final Lcom/google/android/gms/internal/id$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/id$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/id;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/gms/internal/id;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/id;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/id$3;->b:Lcom/google/android/gms/internal/id;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/id$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/id$3;->b:Lcom/google/android/gms/internal/id;

    sget-object v1, Lcom/google/android/gms/internal/id$b;->e:Lcom/google/android/gms/internal/id$b;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/id;->a(Lcom/google/android/gms/internal/id;Lcom/google/android/gms/internal/id$b;)Lcom/google/android/gms/internal/id$b;

    const-string/jumbo v0, "s"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/id$3;->b:Lcom/google/android/gms/internal/id;

    invoke-static {v0}, Lcom/google/android/gms/internal/id;->g(Lcom/google/android/gms/internal/id;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/id$3;->b:Lcom/google/android/gms/internal/id;

    invoke-static {v0}, Lcom/google/android/gms/internal/id;->h(Lcom/google/android/gms/internal/id;)Lcom/google/android/gms/internal/ic$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ic$a;->a(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/id$3;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/id$3;->b:Lcom/google/android/gms/internal/id;

    invoke-static {v0}, Lcom/google/android/gms/internal/id;->i(Lcom/google/android/gms/internal/id;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/id$3;->b:Lcom/google/android/gms/internal/id;

    invoke-static {v1}, Lcom/google/android/gms/internal/id;->j(Lcom/google/android/gms/internal/id;)Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/id$3;->b:Lcom/google/android/gms/internal/id;

    invoke-static {v1}, Lcom/google/android/gms/internal/id;->k(Lcom/google/android/gms/internal/id;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/id$3;->b:Lcom/google/android/gms/internal/id;

    invoke-static {v1}, Lcom/google/android/gms/internal/id;->h(Lcom/google/android/gms/internal/id;)Lcom/google/android/gms/internal/ic$a;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/ic$a;->a(Z)V

    const-string/jumbo v1, "d"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/id$3;->b:Lcom/google/android/gms/internal/id;

    invoke-static {v2}, Lcom/google/android/gms/internal/id;->a(Lcom/google/android/gms/internal/id;)Lcom/google/android/gms/internal/lc;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1a

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Authentication failed: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    .line 1000
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/id$3;->b:Lcom/google/android/gms/internal/id;

    invoke-static {v1}, Lcom/google/android/gms/internal/id;->l(Lcom/google/android/gms/internal/id;)Lcom/google/android/gms/internal/hw;

    move-result-object v1

    .line 2000
    sget-object v2, Lcom/google/android/gms/internal/hw$b;->b:Lcom/google/android/gms/internal/hw$b;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/hw;->a(Lcom/google/android/gms/internal/hw$b;)V

    .line 0
    const-string/jumbo v1, "invalid_token"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/id$3;->b:Lcom/google/android/gms/internal/id;

    invoke-static {v0}, Lcom/google/android/gms/internal/id;->m(Lcom/google/android/gms/internal/id;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/id$3;->b:Lcom/google/android/gms/internal/id;

    invoke-static {v0}, Lcom/google/android/gms/internal/id;->n(Lcom/google/android/gms/internal/id;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/id$3;->b:Lcom/google/android/gms/internal/id;

    invoke-static {v0}, Lcom/google/android/gms/internal/id;->o(Lcom/google/android/gms/internal/id;)Lcom/google/android/gms/internal/ih;

    move-result-object v0

    .line 3000
    iget-wide v2, v0, Lcom/google/android/gms/internal/ih;->d:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/ih;->i:J

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/id$3;->b:Lcom/google/android/gms/internal/id;

    invoke-static {v0}, Lcom/google/android/gms/internal/id;->a(Lcom/google/android/gms/internal/id;)Lcom/google/android/gms/internal/lc;

    move-result-object v0

    const-string/jumbo v1, "Provided authentication credentials are invalid. This usually indicates your FirebaseApp instance was not initialized correctly. Make sure your google-services.json file has the correct firebase_url and api_key. You can re-download google-services.json from https://console.firebase.google.com/."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
