.class final Lcom/google/android/gms/internal/cr;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/android/gms/internal/dq;

.field b:J

.field c:J

.field d:J

.field e:J

.field f:J

.field g:J

.field h:Ljava/lang/String;

.field i:Z

.field private final j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:J

.field private p:J

.field private q:J

.field private r:Ljava/lang/String;

.field private s:J

.field private t:Ljava/lang/String;

.field private u:J

.field private v:J

.field private w:Z

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/dq;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    iput-object p2, p0, Lcom/google/android/gms/internal/cr;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 1000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 2000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final a(J)V
    .locals 5

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 12000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/cr;->i:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/cr;->p:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cr;->i:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/cr;->p:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 4000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/cr;->i:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->k:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ee;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cr;->i:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/cr;->k:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 26000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/cr;->i:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cr;->w:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cr;->i:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/cr;->w:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 3000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final b(J)V
    .locals 5

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 14000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/cr;->i:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/cr;->q:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cr;->i:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/cr;->q:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 6000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/cr;->i:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->l:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ee;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cr;->i:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/cr;->l:Ljava/lang/String;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 5000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final c(J)V
    .locals 5

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 18000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/cr;->i:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/cr;->s:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cr;->i:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/cr;->s:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 8000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/cr;->i:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->m:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ee;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cr;->i:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/cr;->m:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 7000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final d(J)V
    .locals 5

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 22000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/cr;->i:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/cr;->u:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cr;->i:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/cr;->u:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 10000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/cr;->i:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->n:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ee;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cr;->i:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/cr;->n:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 9000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final e(J)V
    .locals 5

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 24000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/cr;->i:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/cr;->v:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cr;->i:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/cr;->v:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 16000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/cr;->i:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->r:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ee;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cr;->i:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/cr;->r:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 11000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/cr;->p:J

    return-wide v0
.end method

.method public final f(J)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 0
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 27000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cr;->i:Z

    iget-wide v4, p0, Lcom/google/android/gms/internal/cr;->o:J

    cmp-long v3, v4, p1

    if-eqz v3, :cond_1

    :goto_1
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cr;->i:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/cr;->o:J

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 20000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/cr;->i:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->t:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ee;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cr;->i:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/cr;->t:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 13000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/cr;->q:J

    return-wide v0
.end method

.method public final g(J)V
    .locals 5

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 30000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/cr;->i:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/cr;->y:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cr;->i:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/cr;->y:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 36000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/cr;->i:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->h:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ee;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cr;->i:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/cr;->h:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 15000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final h(J)V
    .locals 5

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 32000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/cr;->i:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/cr;->z:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cr;->i:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/cr;->z:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()J
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 17000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/cr;->s:J

    return-wide v0
.end method

.method public final i(J)V
    .locals 5

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 38000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/cr;->i:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/cr;->x:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cr;->i:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/cr;->x:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 19000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final k()J
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 21000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/cr;->u:J

    return-wide v0
.end method

.method public final l()J
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 23000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/cr;->v:J

    return-wide v0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 25000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cr;->w:Z

    return v0
.end method

.method public final n()J
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 28000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/cr;->o:J

    return-wide v0
.end method

.method public final o()J
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 29000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/cr;->y:J

    return-wide v0
.end method

.method public final p()J
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 31000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/cr;->z:J

    return-wide v0
.end method

.method public final q()V
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 33000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/cr;->o:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->e()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 34000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->c:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Bundle index overflow. appId"

    iget-object v2, p0, Lcom/google/android/gms/internal/cr;->j:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/di;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/cr;->i:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/cr;->o:J

    return-void
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 35000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final s()J
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->a:Lcom/google/android/gms/internal/dq;

    .line 37000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->e()V

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/cr;->x:J

    return-wide v0
.end method
