.class public final Lcom/google/android/gms/internal/iw$13;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/if;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/iw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/iu;

.field final synthetic b:J

.field final synthetic c:Lcom/google/firebase/database/d$a;

.field final synthetic d:Lcom/google/android/gms/internal/iw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/iw;Lcom/google/android/gms/internal/iu;JLcom/google/firebase/database/d$a;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/iw$13;->d:Lcom/google/android/gms/internal/iw;

    iput-object p2, p0, Lcom/google/android/gms/internal/iw$13;->a:Lcom/google/android/gms/internal/iu;

    iput-wide p3, p0, Lcom/google/android/gms/internal/iw$13;->b:J

    iput-object p5, p0, Lcom/google/android/gms/internal/iw$13;->c:Lcom/google/firebase/database/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/iw;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/b;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/iw$13;->d:Lcom/google/android/gms/internal/iw;

    const-string/jumbo v2, "setValue"

    iget-object v3, p0, Lcom/google/android/gms/internal/iw$13;->a:Lcom/google/android/gms/internal/iu;

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/internal/iw;->a(Lcom/google/android/gms/internal/iw;Ljava/lang/String;Lcom/google/android/gms/internal/iu;Lcom/google/firebase/database/b;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/iw$13;->d:Lcom/google/android/gms/internal/iw;

    iget-wide v2, p0, Lcom/google/android/gms/internal/iw$13;->b:J

    iget-object v4, p0, Lcom/google/android/gms/internal/iw$13;->a:Lcom/google/android/gms/internal/iu;

    invoke-static {v0, v2, v3, v4, v1}, Lcom/google/android/gms/internal/iw;->a(Lcom/google/android/gms/internal/iw;JLcom/google/android/gms/internal/iu;Lcom/google/firebase/database/b;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/iw$13;->d:Lcom/google/android/gms/internal/iw;

    iget-object v3, p0, Lcom/google/android/gms/internal/iw$13;->c:Lcom/google/firebase/database/d$a;

    iget-object v0, p0, Lcom/google/android/gms/internal/iw$13;->a:Lcom/google/android/gms/internal/iu;

    .line 1000
    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iu;->g()Lcom/google/android/gms/internal/lf;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/google/android/gms/internal/lf;->e()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iu;->f()Lcom/google/android/gms/internal/iu;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/firebase/database/o;->a(Lcom/google/android/gms/internal/iw;Lcom/google/android/gms/internal/iu;)Lcom/google/firebase/database/d;

    move-result-object v0

    :goto_0
    new-instance v4, Lcom/google/android/gms/internal/iw$12;

    invoke-direct {v4, v3, v1, v0}, Lcom/google/android/gms/internal/iw$12;-><init>(Lcom/google/firebase/database/d$a;Lcom/google/firebase/database/b;Lcom/google/firebase/database/d;)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/iw;->b(Ljava/lang/Runnable;)V

    .line 0
    :cond_0
    return-void

    .line 1000
    :cond_1
    invoke-static {v2, v0}, Lcom/google/firebase/database/o;->a(Lcom/google/android/gms/internal/iw;Lcom/google/android/gms/internal/iu;)Lcom/google/firebase/database/d;

    move-result-object v0

    goto :goto_0
.end method
