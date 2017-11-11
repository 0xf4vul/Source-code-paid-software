.class public Lcom/google/android/gms/internal/kx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ky;


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/google/android/gms/internal/kz;

.field private final c:Lcom/google/android/gms/internal/ll;

.field private final d:I

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/kx;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/kx;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/kq;)V
    .locals 2

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/kz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/kz;-><init>(Lcom/google/android/gms/internal/kq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/kx;->b:Lcom/google/android/gms/internal/kz;

    .line 1000
    iget-object v0, p1, Lcom/google/android/gms/internal/kq;->g:Lcom/google/android/gms/internal/ll;

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/kx;->c:Lcom/google/android/gms/internal/ll;

    .line 2000
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kq;->c()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot get limit if limit has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/kq;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 0
    iput v0, p0, Lcom/google/android/gms/internal/kx;->d:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kq;->d()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/kx;->e:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ky;
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/kx;->b:Lcom/google/android/gms/internal/kz;

    .line 37000
    iget-object v0, v0, Lcom/google/android/gms/internal/kz;->a:Lcom/google/android/gms/internal/kw;

    .line 0
    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ky$a;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/lm;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/kx;->b:Lcom/google/android/gms/internal/kz;

    new-instance v3, Lcom/google/android/gms/internal/lr;

    invoke-direct {v3, p2, p3}, Lcom/google/android/gms/internal/lr;-><init>(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/kz;->a(Lcom/google/android/gms/internal/lr;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {}, Lcom/google/android/gms/internal/lk;->h()Lcom/google/android/gms/internal/lk;

    move-result-object v3

    .line 3000
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-interface {v1, p2}, Lcom/google/android/gms/internal/ls;->c(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/ls;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6000
    :cond_0
    :goto_1
    return-object p1

    .line 4000
    :cond_1
    iget-object v1, p1, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-interface {v1}, Lcom/google/android/gms/internal/ls;->c()I

    move-result v1

    iget v5, p0, Lcom/google/android/gms/internal/kx;->d:I

    if-ge v1, v5, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/kx;->b:Lcom/google/android/gms/internal/kz;

    .line 5000
    iget-object v0, v0, Lcom/google/android/gms/internal/kz;->a:Lcom/google/android/gms/internal/kw;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 0
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ky;->a(Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ky$a;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/lm;

    move-result-object p1

    goto :goto_1

    .line 6000
    :cond_2
    sget-boolean v1, Lcom/google/android/gms/internal/kx;->a:Z

    if-nez v1, :cond_3

    .line 7000
    iget-object v1, p1, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 6000
    invoke-interface {v1}, Lcom/google/android/gms/internal/ls;->c()I

    move-result v1

    iget v5, p0, Lcom/google/android/gms/internal/kx;->d:I

    if-eq v1, v5, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    new-instance v5, Lcom/google/android/gms/internal/lr;

    invoke-direct {v5, p2, v3}, Lcom/google/android/gms/internal/lr;-><init>(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/kx;->e:Z

    if-eqz v1, :cond_8

    .line 8000
    iget-object v1, p1, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    instance-of v1, v1, Lcom/google/android/gms/internal/lg;

    if-nez v1, :cond_6

    .line 6000
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/kx;->b:Lcom/google/android/gms/internal/kz;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/kz;->a(Lcom/google/android/gms/internal/lr;)Z

    move-result v6

    .line 14000
    iget-object v1, p1, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 6000
    invoke-interface {v1, p2}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/lf;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 15000
    iget-object v1, p1, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 6000
    invoke-interface {v1, p2}, Lcom/google/android/gms/internal/ls;->c(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/ls;

    move-result-object v7

    iget-object v1, p0, Lcom/google/android/gms/internal/kx;->c:Lcom/google/android/gms/internal/ll;

    iget-boolean v8, p0, Lcom/google/android/gms/internal/kx;->e:Z

    invoke-interface {p5, v1, v0, v8}, Lcom/google/android/gms/internal/ky$a;->a(Lcom/google/android/gms/internal/ll;Lcom/google/android/gms/internal/lr;Z)Lcom/google/android/gms/internal/lr;

    move-result-object v0

    move-object v1, v0

    :goto_3
    if-eqz v1, :cond_a

    .line 16000
    iget-object v0, v1, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/lf;

    .line 6000
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/lf;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 17000
    iget-object v0, p1, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 18000
    iget-object v8, v1, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/lf;

    .line 6000
    invoke-interface {v0, v8}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/lf;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/kx;->c:Lcom/google/android/gms/internal/ll;

    iget-boolean v8, p0, Lcom/google/android/gms/internal/kx;->e:Z

    invoke-interface {p5, v0, v1, v8}, Lcom/google/android/gms/internal/ky$a;->a(Lcom/google/android/gms/internal/ll;Lcom/google/android/gms/internal/lr;Z)Lcom/google/android/gms/internal/lr;

    move-result-object v0

    move-object v1, v0

    goto :goto_3

    .line 8000
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lm;->a()V

    iget-object v0, p1, Lcom/google/android/gms/internal/lm;->c:Lcom/google/android/gms/internal/hn;

    sget-object v1, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/hn;

    if-ne v0, v1, :cond_7

    iget-object v0, p1, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    check-cast v0, Lcom/google/android/gms/internal/lg;

    .line 9000
    iget-object v0, v0, Lcom/google/android/gms/internal/lg;->b:Lcom/google/android/gms/internal/hk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lf;

    .line 8000
    new-instance v1, Lcom/google/android/gms/internal/lr;

    iget-object v6, p1, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    invoke-interface {v6, v0}, Lcom/google/android/gms/internal/ls;->c(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/ls;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Lcom/google/android/gms/internal/lr;-><init>(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)V

    move-object v0, v1

    goto :goto_2

    :cond_7
    iget-object v0, p1, Lcom/google/android/gms/internal/lm;->c:Lcom/google/android/gms/internal/hn;

    .line 10000
    iget-object v0, v0, Lcom/google/android/gms/internal/hn;->a:Lcom/google/android/gms/internal/hk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk;->a()Ljava/lang/Object;

    move-result-object v0

    .line 8000
    check-cast v0, Lcom/google/android/gms/internal/lr;

    goto :goto_2

    .line 11000
    :cond_8
    iget-object v1, p1, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    instance-of v1, v1, Lcom/google/android/gms/internal/lg;

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lm;->a()V

    iget-object v0, p1, Lcom/google/android/gms/internal/lm;->c:Lcom/google/android/gms/internal/hn;

    sget-object v1, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/hn;

    if-ne v0, v1, :cond_9

    iget-object v0, p1, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    check-cast v0, Lcom/google/android/gms/internal/lg;

    .line 12000
    iget-object v0, v0, Lcom/google/android/gms/internal/lg;->b:Lcom/google/android/gms/internal/hk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lf;

    .line 11000
    new-instance v1, Lcom/google/android/gms/internal/lr;

    iget-object v6, p1, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    invoke-interface {v6, v0}, Lcom/google/android/gms/internal/ls;->c(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/ls;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Lcom/google/android/gms/internal/lr;-><init>(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)V

    move-object v0, v1

    goto/16 :goto_2

    :cond_9
    iget-object v0, p1, Lcom/google/android/gms/internal/lm;->c:Lcom/google/android/gms/internal/hn;

    .line 13000
    iget-object v0, v0, Lcom/google/android/gms/internal/hn;->a:Lcom/google/android/gms/internal/hk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk;->b()Ljava/lang/Object;

    move-result-object v0

    .line 11000
    check-cast v0, Lcom/google/android/gms/internal/lr;

    goto/16 :goto_2

    .line 6000
    :cond_a
    if-nez v1, :cond_c

    move v0, v2

    :goto_4
    if-eqz v6, :cond_d

    invoke-interface {v3}, Lcom/google/android/gms/internal/ls;->b()Z

    move-result v5

    if-nez v5, :cond_d

    if-ltz v0, :cond_d

    move v0, v2

    :goto_5
    if-eqz v0, :cond_e

    if-eqz p6, :cond_b

    invoke-static {p2, v3, v7}, Lcom/google/android/gms/internal/kk;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/kk;

    move-result-object v0

    invoke-virtual {p6, v0}, Lcom/google/android/gms/internal/kv;->a(Lcom/google/android/gms/internal/kk;)V

    :cond_b
    invoke-virtual {p1, p2, v3}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lm;

    move-result-object p1

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/kx;->c:Lcom/google/android/gms/internal/ll;

    iget-boolean v8, p0, Lcom/google/android/gms/internal/kx;->e:Z

    invoke-virtual {v0, v1, v5, v8}, Lcom/google/android/gms/internal/ll;->a(Lcom/google/android/gms/internal/lr;Lcom/google/android/gms/internal/lr;Z)I

    move-result v0

    goto :goto_4

    :cond_d
    move v0, v4

    goto :goto_5

    :cond_e
    if-eqz p6, :cond_f

    invoke-static {p2, v7}, Lcom/google/android/gms/internal/kk;->b(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/kk;

    move-result-object v0

    invoke-virtual {p6, v0}, Lcom/google/android/gms/internal/kv;->a(Lcom/google/android/gms/internal/kk;)V

    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/lk;->h()Lcom/google/android/gms/internal/lk;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lm;

    move-result-object p1

    if-eqz v1, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/kx;->b:Lcom/google/android/gms/internal/kz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/kz;->a(Lcom/google/android/gms/internal/lr;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v2

    :goto_6
    if-eqz v0, :cond_0

    if-eqz p6, :cond_10

    .line 19000
    iget-object v0, v1, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/lf;

    .line 20000
    iget-object v2, v1, Lcom/google/android/gms/internal/lr;->b:Lcom/google/android/gms/internal/ls;

    .line 6000
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/kk;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/kk;

    move-result-object v0

    invoke-virtual {p6, v0}, Lcom/google/android/gms/internal/kv;->a(Lcom/google/android/gms/internal/kk;)V

    .line 21000
    :cond_10
    iget-object v0, v1, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/lf;

    .line 22000
    iget-object v1, v1, Lcom/google/android/gms/internal/lr;->b:Lcom/google/android/gms/internal/ls;

    .line 6000
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lm;

    move-result-object p1

    goto/16 :goto_1

    :cond_11
    move v0, v4

    goto :goto_6

    :cond_12
    invoke-interface {v3}, Lcom/google/android/gms/internal/ls;->b()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v6, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/kx;->c:Lcom/google/android/gms/internal/ll;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/kx;->e:Z

    invoke-virtual {v1, v0, v5, v2}, Lcom/google/android/gms/internal/ll;->a(Lcom/google/android/gms/internal/lr;Lcom/google/android/gms/internal/lr;Z)I

    move-result v1

    if-ltz v1, :cond_0

    if-eqz p6, :cond_13

    .line 23000
    iget-object v1, v0, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/lf;

    .line 24000
    iget-object v2, v0, Lcom/google/android/gms/internal/lr;->b:Lcom/google/android/gms/internal/ls;

    .line 6000
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/kk;->b(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/kk;

    move-result-object v1

    invoke-virtual {p6, v1}, Lcom/google/android/gms/internal/kv;->a(Lcom/google/android/gms/internal/kk;)V

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/kk;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/kk;

    move-result-object v1

    invoke-virtual {p6, v1}, Lcom/google/android/gms/internal/kv;->a(Lcom/google/android/gms/internal/kk;)V

    :cond_13
    invoke-virtual {p1, p2, v3}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lm;

    move-result-object v1

    .line 25000
    iget-object v0, v0, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/lf;

    .line 6000
    invoke-static {}, Lcom/google/android/gms/internal/lk;->h()Lcom/google/android/gms/internal/lk;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lm;

    move-result-object p1

    goto/16 :goto_1

    :cond_14
    move-object v3, p3

    goto/16 :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/lm;
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 0
    .line 26000
    iget-object v0, p2, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ls;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27000
    iget-object v0, p2, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ls;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/lk;->h()Lcom/google/android/gms/internal/lk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/kx;->c:Lcom/google/android/gms/internal/ll;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ll;)Lcom/google/android/gms/internal/lm;

    move-result-object v9

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/kx;->b:Lcom/google/android/gms/internal/kz;

    .line 36000
    iget-object v0, v0, Lcom/google/android/gms/internal/kz;->a:Lcom/google/android/gms/internal/kw;

    .line 0
    invoke-interface {v0, p1, v9, p3}, Lcom/google/android/gms/internal/ky;->a(Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/lm;

    move-result-object v0

    return-object v0

    .line 28000
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/lk;->h()Lcom/google/android/gms/internal/lk;

    move-result-object v0

    .line 0
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/lm;->b(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lm;

    move-result-object v6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/kx;->e:Z

    if-eqz v0, :cond_5

    .line 29000
    invoke-virtual {p2}, Lcom/google/android/gms/internal/lm;->a()V

    iget-object v0, p2, Lcom/google/android/gms/internal/lm;->c:Lcom/google/android/gms/internal/hn;

    sget-object v1, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/hn;

    if-ne v0, v1, :cond_4

    iget-object v0, p2, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ls;->g()Ljava/util/Iterator;

    move-result-object v0

    .line 0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/kx;->b:Lcom/google/android/gms/internal/kz;

    .line 31000
    iget-object v4, v1, Lcom/google/android/gms/internal/kz;->c:Lcom/google/android/gms/internal/lr;

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/kx;->b:Lcom/google/android/gms/internal/kz;

    .line 32000
    iget-object v3, v1, Lcom/google/android/gms/internal/kz;->b:Lcom/google/android/gms/internal/lr;

    .line 0
    const/4 v1, -0x1

    move-object v5, v4

    move-object v4, v3

    move-object v3, v0

    :goto_1
    move v8, v7

    move-object v9, v6

    move v6, v7

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lr;

    if-nez v6, :cond_3

    iget-object v10, p0, Lcom/google/android/gms/internal/kx;->c:Lcom/google/android/gms/internal/ll;

    invoke-virtual {v10, v5, v0}, Lcom/google/android/gms/internal/ll;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v10

    mul-int/2addr v10, v1

    if-gtz v10, :cond_3

    move v6, v2

    :cond_3
    if-eqz v6, :cond_6

    iget v10, p0, Lcom/google/android/gms/internal/kx;->d:I

    if-ge v8, v10, :cond_6

    iget-object v10, p0, Lcom/google/android/gms/internal/kx;->c:Lcom/google/android/gms/internal/ll;

    invoke-virtual {v10, v0, v4}, Lcom/google/android/gms/internal/ll;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v10

    mul-int/2addr v10, v1

    if-gtz v10, :cond_6

    move v10, v2

    :goto_3
    if-eqz v10, :cond_7

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    .line 29000
    :cond_4
    iget-object v1, p2, Lcom/google/android/gms/internal/lm;->c:Lcom/google/android/gms/internal/hn;

    .line 30000
    new-instance v0, Lcom/google/android/gms/internal/hn$a;

    iget-object v1, v1, Lcom/google/android/gms/internal/hn;->a:Lcom/google/android/gms/internal/hk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/hk;->e()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/hn$a;-><init>(Ljava/util/Iterator;)V

    goto :goto_0

    .line 0
    :cond_5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/lm;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/kx;->b:Lcom/google/android/gms/internal/kz;

    .line 33000
    iget-object v3, v1, Lcom/google/android/gms/internal/kz;->b:Lcom/google/android/gms/internal/lr;

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/kx;->b:Lcom/google/android/gms/internal/kz;

    .line 34000
    iget-object v1, v1, Lcom/google/android/gms/internal/kz;->c:Lcom/google/android/gms/internal/lr;

    move-object v4, v1

    move-object v5, v3

    move v1, v2

    move-object v3, v0

    .line 0
    goto :goto_1

    :cond_6
    move v10, v7

    goto :goto_3

    .line 35000
    :cond_7
    iget-object v0, v0, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/lf;

    .line 0
    invoke-static {}, Lcom/google/android/gms/internal/lk;->h()Lcom/google/android/gms/internal/lk;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lm;

    move-result-object v0

    move-object v9, v0

    goto :goto_2
.end method

.method public final a(Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lm;
    .locals 0

    return-object p1
.end method

.method public final b()Lcom/google/android/gms/internal/ll;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/kx;->c:Lcom/google/android/gms/internal/ll;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
