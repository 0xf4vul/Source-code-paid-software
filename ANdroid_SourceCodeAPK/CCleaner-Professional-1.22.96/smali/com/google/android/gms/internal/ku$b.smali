.class final Lcom/google/android/gms/internal/ku$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ky$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/jm;

.field private final b:Lcom/google/android/gms/internal/kt;

.field private final c:Lcom/google/android/gms/internal/ls;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/jm;Lcom/google/android/gms/internal/kt;Lcom/google/android/gms/internal/ls;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ku$b;->a:Lcom/google/android/gms/internal/jm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ku$b;->b:Lcom/google/android/gms/internal/kt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ku$b;->c:Lcom/google/android/gms/internal/ls;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ll;Lcom/google/android/gms/internal/lr;Z)Lcom/google/android/gms/internal/lr;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ku$b;->c:Lcom/google/android/gms/internal/ls;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ku$b;->c:Lcom/google/android/gms/internal/ls;

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ku$b;->a:Lcom/google/android/gms/internal/jm;

    .line 5000
    iget-object v3, v1, Lcom/google/android/gms/internal/jm;->b:Lcom/google/android/gms/internal/jl;

    iget-object v1, v1, Lcom/google/android/gms/internal/jm;->a:Lcom/google/android/gms/internal/iu;

    .line 6000
    iget-object v3, v3, Lcom/google/android/gms/internal/jl;->a:Lcom/google/android/gms/internal/ik;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ik;->d(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ik;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/iu;->a()Lcom/google/android/gms/internal/iu;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ik;->c(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v0, v1

    :goto_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ls;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lr;

    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/internal/ll;->a(Lcom/google/android/gms/internal/lr;Lcom/google/android/gms/internal/lr;Z)I

    move-result v2

    if-lez v2, :cond_5

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0, v1, p3}, Lcom/google/android/gms/internal/ll;->a(Lcom/google/android/gms/internal/lr;Lcom/google/android/gms/internal/lr;Z)I

    move-result v2

    if-gez v2, :cond_5

    :cond_0
    :goto_3
    move-object v1, v0

    goto :goto_2

    .line 0
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ku$b;->b:Lcom/google/android/gms/internal/kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kt;->b()Lcom/google/android/gms/internal/ls;

    move-result-object v0

    goto :goto_0

    .line 6000
    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ik;->a(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v2, v1

    :cond_4
    return-object v2

    :cond_5
    move-object v0, v1

    goto :goto_3
.end method

.method public final a(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/ls;
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ku$b;->b:Lcom/google/android/gms/internal/kt;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/kt;->a:Lcom/google/android/gms/internal/ki;

    .line 0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ki;->a(Lcom/google/android/gms/internal/lf;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ls;->c(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ku$b;->c:Lcom/google/android/gms/internal/ls;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ki;

    iget-object v1, p0, Lcom/google/android/gms/internal/ku$b;->c:Lcom/google/android/gms/internal/ls;

    invoke-static {}, Lcom/google/android/gms/internal/ln;->d()Lcom/google/android/gms/internal/ln;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ll;)Lcom/google/android/gms/internal/lm;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ki;-><init>(Lcom/google/android/gms/internal/lm;ZZ)V

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ku$b;->a:Lcom/google/android/gms/internal/jm;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/jm;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ki;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ku$b;->b:Lcom/google/android/gms/internal/kt;

    .line 4000
    iget-object v0, v0, Lcom/google/android/gms/internal/kt;->b:Lcom/google/android/gms/internal/ki;

    goto :goto_1
.end method
