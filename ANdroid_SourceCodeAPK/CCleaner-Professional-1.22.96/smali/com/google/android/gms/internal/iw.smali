.class public Lcom/google/android/gms/internal/iw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ic$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/iw$a;,
        Lcom/google/android/gms/internal/iw$b;
    }
.end annotation


# static fields
.field public static final synthetic h:Z


# instance fields
.field public final a:Lcom/google/android/gms/internal/mr;

.field public final b:Lcom/google/android/gms/internal/ic;

.field public final c:Lcom/google/android/gms/internal/lc;

.field public final d:Lcom/google/android/gms/internal/lc;

.field public e:J

.field public f:Lcom/google/android/gms/internal/je;

.field public g:Lcom/google/android/gms/internal/je;

.field private final i:Lcom/google/android/gms/internal/ix;

.field private j:Lcom/google/android/gms/internal/jb;

.field private k:Lcom/google/android/gms/internal/jc;

.field private l:Lcom/google/android/gms/internal/kg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/kg",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/iw$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private m:Z

.field private final n:Lcom/google/android/gms/internal/kp;

.field private final o:Lcom/google/android/gms/internal/in;

.field private final p:Lcom/google/android/gms/internal/lc;

.field private q:J

.field private r:Lcom/google/firebase/database/f;

.field private s:Z

.field private t:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/iw;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/iw;->h:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ix;Lcom/google/android/gms/internal/in;Lcom/google/firebase/database/f;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mr;

    new-instance v1, Lcom/google/android/gms/internal/mn;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mn;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mr;-><init>(Lcom/google/android/gms/internal/mm;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/iw;->a:Lcom/google/android/gms/internal/mr;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/iw;->m:Z

    iput-wide v4, p0, Lcom/google/android/gms/internal/iw;->e:J

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/iw;->q:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/iw;->s:Z

    iput-wide v4, p0, Lcom/google/android/gms/internal/iw;->t:J

    iput-object p1, p0, Lcom/google/android/gms/internal/iw;->i:Lcom/google/android/gms/internal/ix;

    iput-object p2, p0, Lcom/google/android/gms/internal/iw;->o:Lcom/google/android/gms/internal/in;

    iput-object p3, p0, Lcom/google/android/gms/internal/iw;->r:Lcom/google/firebase/database/f;

    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->o:Lcom/google/android/gms/internal/in;

    const-string/jumbo v1, "RepoOperation"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/in;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/lc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/iw;->c:Lcom/google/android/gms/internal/lc;

    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->o:Lcom/google/android/gms/internal/in;

    const-string/jumbo v1, "Transaction"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/in;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/lc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/iw;->p:Lcom/google/android/gms/internal/lc;

    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->o:Lcom/google/android/gms/internal/in;

    const-string/jumbo v1, "DataOperation"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/in;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/lc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/iw;->d:Lcom/google/android/gms/internal/lc;

    new-instance v0, Lcom/google/android/gms/internal/kp;

    iget-object v1, p0, Lcom/google/android/gms/internal/iw;->o:Lcom/google/android/gms/internal/in;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/kp;-><init>(Lcom/google/android/gms/internal/in;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/iw;->n:Lcom/google/android/gms/internal/kp;

    new-instance v0, Lcom/google/android/gms/internal/ia;

    iget-object v1, p1, Lcom/google/android/gms/internal/ix;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ix;->c:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ix;->b:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ia;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p2, v0, p0}, Lcom/google/android/gms/internal/in;->a(Lcom/google/android/gms/internal/ia;Lcom/google/android/gms/internal/ic$a;)Lcom/google/android/gms/internal/ic;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/iw;->b:Lcom/google/android/gms/internal/ic;

    new-instance v0, Lcom/google/android/gms/internal/iw$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/iw$1;-><init>(Lcom/google/android/gms/internal/iw;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/iw;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/iw;Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/iu;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iw;->b(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/iu;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/android/gms/internal/iu;Ljava/util/List;)Lcom/google/android/gms/internal/ls;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/iu;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/android/gms/internal/ls;"
        }
    .end annotation

    .prologue
    .line 0
    iget-object v5, p0, Lcom/google/android/gms/internal/iw;->g:Lcom/google/android/gms/internal/je;

    .line 26000
    iget-object v2, v5, Lcom/google/android/gms/internal/je;->a:Lcom/google/android/gms/internal/ke;

    .line 27000
    iget-object v0, v2, Lcom/google/android/gms/internal/ke;->a:Ljava/lang/Object;

    .line 26000
    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/iu;->a()Lcom/google/android/gms/internal/iu;

    move-result-object v0

    move-object v4, v2

    move-object v2, p1

    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/iu;->d()Lcom/google/android/gms/internal/lf;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/iu;->e()Lcom/google/android/gms/internal/iu;

    move-result-object v3

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/iu;->a(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/iu;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/iu;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/iu;

    move-result-object v7

    if-eqz v6, :cond_2

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ke;->a(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/ke;

    move-result-object v4

    .line 28000
    :goto_1
    iget-object v0, v4, Lcom/google/android/gms/internal/ke;->a:Ljava/lang/Object;

    .line 26000
    check-cast v0, Lcom/google/android/gms/internal/jd;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/jd;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    :goto_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/iu;->h()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v1, v5, Lcom/google/android/gms/internal/je;->b:Lcom/google/android/gms/internal/jl;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/android/gms/internal/jl;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;Ljava/util/List;Z)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    .line 0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/lk;->h()Lcom/google/android/gms/internal/lk;

    move-result-object v0

    :cond_1
    return-object v0

    .line 26000
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ke;->a()Lcom/google/android/gms/internal/ke;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    move-object v1, v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/b;
    .locals 1

    .prologue
    .line 0
    .line 51009
    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcom/google/firebase/database/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/b;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 0
    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/iw;)V
    .locals 12

    .prologue
    .line 0
    .line 44000
    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->o:Lcom/google/android/gms/internal/in;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/in;->l()Lcom/google/android/gms/internal/ij;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/iw$4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/iw$4;-><init>(Lcom/google/android/gms/internal/iw;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ij;->a(Lcom/google/android/gms/internal/ij$b;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->b:Lcom/google/android/gms/internal/ic;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ic;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->o:Lcom/google/android/gms/internal/in;

    iget-object v1, p0, Lcom/google/android/gms/internal/iw;->i:Lcom/google/android/gms/internal/ix;

    iget-object v1, v1, Lcom/google/android/gms/internal/ix;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/in;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/jz;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/jb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/jb;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/iw;->j:Lcom/google/android/gms/internal/jb;

    new-instance v1, Lcom/google/android/gms/internal/jc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/jc;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/iw;->k:Lcom/google/android/gms/internal/jc;

    new-instance v1, Lcom/google/android/gms/internal/kg;

    invoke-direct {v1}, Lcom/google/android/gms/internal/kg;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/iw;->l:Lcom/google/android/gms/internal/kg;

    new-instance v1, Lcom/google/android/gms/internal/je;

    iget-object v2, p0, Lcom/google/android/gms/internal/iw;->o:Lcom/google/android/gms/internal/in;

    new-instance v3, Lcom/google/android/gms/internal/jy;

    invoke-direct {v3}, Lcom/google/android/gms/internal/jy;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/iw$9;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/iw$9;-><init>(Lcom/google/android/gms/internal/iw;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/je;-><init>(Lcom/google/android/gms/internal/in;Lcom/google/android/gms/internal/jz;Lcom/google/android/gms/internal/je$d;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/iw;->f:Lcom/google/android/gms/internal/je;

    new-instance v1, Lcom/google/android/gms/internal/je;

    iget-object v2, p0, Lcom/google/android/gms/internal/iw;->o:Lcom/google/android/gms/internal/in;

    new-instance v3, Lcom/google/android/gms/internal/iw$10;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/iw$10;-><init>(Lcom/google/android/gms/internal/iw;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/internal/je;-><init>(Lcom/google/android/gms/internal/in;Lcom/google/android/gms/internal/jz;Lcom/google/android/gms/internal/je$d;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/iw;->g:Lcom/google/android/gms/internal/je;

    .line 45000
    invoke-interface {v0}, Lcom/google/android/gms/internal/jz;->a()Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->a:Lcom/google/android/gms/internal/mr;

    invoke-static {v0}, Lcom/google/android/gms/internal/ja;->a(Lcom/google/android/gms/internal/mm;)Ljava/util/Map;

    move-result-object v10

    const-wide/high16 v0, -0x8000000000000000L

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-wide v2, v0

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ji;

    new-instance v0, Lcom/google/android/gms/internal/iw$11;

    invoke-direct {v0, p0, v4}, Lcom/google/android/gms/internal/iw$11;-><init>(Lcom/google/android/gms/internal/iw;Lcom/google/android/gms/internal/ji;)V

    .line 46000
    iget-wide v6, v4, Lcom/google/android/gms/internal/ji;->a:J

    .line 45000
    cmp-long v1, v2, v6

    if-ltz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Write ids were not in order."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47000
    :cond_0
    iget-wide v8, v4, Lcom/google/android/gms/internal/ji;->a:J

    .line 48000
    iget-wide v2, v4, Lcom/google/android/gms/internal/ji;->a:J

    .line 45000
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/gms/internal/iw;->q:J

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ji;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/iw;->c:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/iw;->c:Lcom/google/android/gms/internal/lc;

    .line 49000
    iget-wide v2, v4, Lcom/google/android/gms/internal/ji;->a:J

    .line 45000
    const/16 v5, 0x30

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "Restoring overwrite with id "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 50000
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 45000
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/iw;->b:Lcom/google/android/gms/internal/ic;

    .line 51000
    iget-object v2, v4, Lcom/google/android/gms/internal/ji;->b:Lcom/google/android/gms/internal/iu;

    .line 45000
    invoke-virtual {v2}, Lcom/google/android/gms/internal/iu;->c()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ji;->a()Lcom/google/android/gms/internal/ls;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Lcom/google/android/gms/internal/ls;->a(Z)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ic;->a(Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/if;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ji;->a()Lcom/google/android/gms/internal/ls;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/google/android/gms/internal/ja;->a(Lcom/google/android/gms/internal/ls;Ljava/util/Map;)Lcom/google/android/gms/internal/ls;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->g:Lcom/google/android/gms/internal/je;

    .line 51001
    iget-object v1, v4, Lcom/google/android/gms/internal/ji;->b:Lcom/google/android/gms/internal/iu;

    .line 45000
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ji;->a()Lcom/google/android/gms/internal/ls;

    move-result-object v2

    .line 51002
    iget-wide v4, v4, Lcom/google/android/gms/internal/ji;->a:J

    .line 45000
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ls;JZZ)Ljava/util/List;

    move-wide v2, v8

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/iw;->c:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/iw;->c:Lcom/google/android/gms/internal/lc;

    .line 51003
    iget-wide v2, v4, Lcom/google/android/gms/internal/ji;->a:J

    .line 45000
    const/16 v5, 0x2c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "Restoring merge with id "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 51004
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 45000
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/iw;->b:Lcom/google/android/gms/internal/ic;

    .line 51005
    iget-object v2, v4, Lcom/google/android/gms/internal/ji;->b:Lcom/google/android/gms/internal/iu;

    .line 45000
    invoke-virtual {v2}, Lcom/google/android/gms/internal/iu;->c()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ji;->b()Lcom/google/android/gms/internal/ik;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ik;->d()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ic;->a(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/if;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ji;->b()Lcom/google/android/gms/internal/ik;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/google/android/gms/internal/ja;->a(Lcom/google/android/gms/internal/ik;Ljava/util/Map;)Lcom/google/android/gms/internal/ik;

    move-result-object v6

    iget-object v1, p0, Lcom/google/android/gms/internal/iw;->g:Lcom/google/android/gms/internal/je;

    .line 51006
    iget-object v2, v4, Lcom/google/android/gms/internal/ji;->b:Lcom/google/android/gms/internal/iu;

    .line 45000
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ji;->b()Lcom/google/android/gms/internal/ik;

    move-result-object v3

    .line 51007
    iget-wide v4, v4, Lcom/google/android/gms/internal/ji;->a:J

    .line 51008
    iget-object v7, v1, Lcom/google/android/gms/internal/je;->d:Lcom/google/android/gms/internal/jz;

    new-instance v0, Lcom/google/android/gms/internal/je$12;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/je$12;-><init>(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ik;JLcom/google/android/gms/internal/ik;)V

    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/jz;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-wide v2, v8

    .line 45000
    goto/16 :goto_0

    .line 44000
    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/il;->c:Lcom/google/android/gms/internal/lf;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/iw;->a(Lcom/google/android/gms/internal/lf;Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/il;->d:Lcom/google/android/gms/internal/lf;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/iw;->a(Lcom/google/android/gms/internal/lf;Ljava/lang/Object;)V

    .line 0
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/iw;JLcom/google/android/gms/internal/iu;Lcom/google/firebase/database/b;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 0
    .line 51013
    if-eqz p4, :cond_0

    .line 51014
    iget v0, p4, Lcom/google/firebase/database/b;->a:I

    .line 51013
    const/16 v1, -0x19

    if-eq v0, v1, :cond_2

    :cond_0
    if-nez p4, :cond_3

    move v0, v5

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/iw;->g:Lcom/google/android/gms/internal/je;

    if-nez v0, :cond_4

    move v4, v5

    :goto_1
    iget-object v6, p0, Lcom/google/android/gms/internal/iw;->a:Lcom/google/android/gms/internal/mr;

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/je;->a(JZZLcom/google/android/gms/internal/mm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/iw;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/iu;

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/iw;->a(Ljava/util/List;)V

    .line 0
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 51013
    goto :goto_0

    :cond_4
    move v4, v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/iw;Lcom/google/android/gms/internal/kg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/iw;->a(Lcom/google/android/gms/internal/kg;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/iw;Lcom/google/android/gms/internal/kg;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/iw;->a(Lcom/google/android/gms/internal/kg;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/iw;Ljava/lang/String;Lcom/google/android/gms/internal/iu;Lcom/google/firebase/database/b;)V
    .locals 5

    .prologue
    .line 51010
    if-eqz p3, :cond_0

    .line 51011
    iget v0, p3, Lcom/google/firebase/database/b;->a:I

    .line 51010
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 51012
    iget v0, p3, Lcom/google/firebase/database/b;->a:I

    .line 51010
    const/16 v1, -0x19

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->c:Lcom/google/android/gms/internal/lc;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/iu;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/firebase/database/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xd

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;)V

    .line 0
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/iw;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iw;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/iw;Ljava/util/List;Lcom/google/android/gms/internal/kg;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/iw;->a(Ljava/util/List;Lcom/google/android/gms/internal/kg;)V

    return-void
.end method

.method private a(Lcom/google/android/gms/internal/kg;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/kg",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/iw$a;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 0
    .line 29000
    iget-object v0, p1, Lcom/google/android/gms/internal/kg;->a:Lcom/google/android/gms/internal/kh;

    iget-object v0, v0, Lcom/google/android/gms/internal/kh;->b:Ljava/lang/Object;

    .line 0
    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/iw;->c(Lcom/google/android/gms/internal/kg;)Ljava/util/List;

    move-result-object v3

    sget-boolean v0, Lcom/google/android/gms/internal/iw;->h:Z

    if-nez v0, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/iw$a;

    invoke-static {v0}, Lcom/google/android/gms/internal/iw$a;->c(Lcom/google/android/gms/internal/iw$a;)I

    move-result v0

    sget v5, Lcom/google/android/gms/internal/iw$b;->b:I

    if-eq v0, v5, :cond_1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kg;->a()Lcom/google/android/gms/internal/iu;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/google/android/gms/internal/iw;->a(Ljava/util/List;Lcom/google/android/gms/internal/iu;)V

    :cond_2
    :goto_1
    return-void

    .line 30000
    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/internal/kg;->a:Lcom/google/android/gms/internal/kh;

    iget-object v0, v0, Lcom/google/android/gms/internal/kh;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 0
    :goto_2
    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/iw$15;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/iw$15;-><init>(Lcom/google/android/gms/internal/iw;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kg;->a(Lcom/google/android/gms/internal/kg$b;)V

    goto :goto_1

    :cond_4
    move v0, v2

    .line 30000
    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/internal/kg;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/kg",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/iw$a;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 0
    .line 43000
    iget-object v0, p1, Lcom/google/android/gms/internal/kg;->a:Lcom/google/android/gms/internal/kh;

    iget-object v0, v0, Lcom/google/android/gms/internal/kh;->b:Ljava/lang/Object;

    .line 0
    check-cast v0, Ljava/util/List;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_a

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, -0x9

    if-ne p2, v1, :cond_0

    const-string/jumbo v1, "overriddenBySet"

    invoke-static {v1}, Lcom/google/firebase/database/b;->a(Ljava/lang/String;)Lcom/google/firebase/database/b;

    move-result-object v1

    move-object v8, v1

    :goto_0
    const/4 v2, -0x1

    const/4 v1, 0x0

    move v9, v1

    move v10, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_8

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/google/android/gms/internal/iw$a;

    invoke-static {v7}, Lcom/google/android/gms/internal/iw$a;->c(Lcom/google/android/gms/internal/iw$a;)I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/iw$b;->e:I

    if-eq v1, v2, :cond_5

    invoke-static {v7}, Lcom/google/android/gms/internal/iw$a;->c(Lcom/google/android/gms/internal/iw$a;)I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/iw$b;->c:I

    if-ne v1, v2, :cond_3

    sget-boolean v1, Lcom/google/android/gms/internal/iw;->h:Z

    if-nez v1, :cond_2

    add-int/lit8 v1, v9, -0x1

    if-eq v10, v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/16 v1, -0x19

    if-ne p2, v1, :cond_1

    const/4 v1, 0x1

    :goto_2
    const/16 v2, 0x2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Unknown transaction abort reason: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mv;->a(ZLjava/lang/String;)V

    invoke-static {}, Lcom/google/firebase/database/b;->a()Lcom/google/firebase/database/b;

    move-result-object v1

    move-object v8, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    sget v1, Lcom/google/android/gms/internal/iw$b;->e:I

    invoke-static {v7, v1}, Lcom/google/android/gms/internal/iw$a;->a(Lcom/google/android/gms/internal/iw$a;I)I

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/iw$a;->a(Lcom/google/android/gms/internal/iw$a;Lcom/google/firebase/database/b;)Lcom/google/firebase/database/b;

    move v2, v9

    :goto_3
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    move v10, v2

    goto :goto_1

    :cond_3
    sget-boolean v1, Lcom/google/android/gms/internal/iw;->h:Z

    if-nez v1, :cond_4

    invoke-static {v7}, Lcom/google/android/gms/internal/iw$a;->c(Lcom/google/android/gms/internal/iw$a;)I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/iw$b;->b:I

    if-eq v1, v2, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    new-instance v1, Lcom/google/android/gms/internal/jk;

    invoke-static {v7}, Lcom/google/android/gms/internal/iw$a;->i(Lcom/google/android/gms/internal/iw$a;)Lcom/google/firebase/database/n;

    move-result-object v2

    invoke-static {v7}, Lcom/google/android/gms/internal/iw$a;->e(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/iu;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/kr;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/kr;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/gms/internal/jk;-><init>(Lcom/google/android/gms/internal/iw;Lcom/google/firebase/database/n;Lcom/google/android/gms/internal/kr;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/iw;->a(Lcom/google/android/gms/internal/ip;)V

    const/16 v1, -0x9

    if-ne p2, v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/iw;->g:Lcom/google/android/gms/internal/je;

    invoke-static {v7}, Lcom/google/android/gms/internal/iw$a;->b(Lcom/google/android/gms/internal/iw$a;)J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/iw;->a:Lcom/google/android/gms/internal/mr;

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/je;->a(JZZLcom/google/android/gms/internal/mm;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_4
    new-instance v1, Lcom/google/android/gms/internal/iw$8;

    invoke-direct {v1, v7, v8}, Lcom/google/android/gms/internal/iw$8;-><init>(Lcom/google/android/gms/internal/iw$a;Lcom/google/firebase/database/b;)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    move v2, v10

    goto :goto_3

    :cond_6
    const/16 v1, -0x19

    if-ne p2, v1, :cond_7

    const/4 v1, 0x1

    :goto_5
    const/16 v2, 0x2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Unknown transaction abort reason: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mv;->a(ZLjava/lang/String;)V

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    goto :goto_5

    :cond_8
    const/4 v1, -0x1

    if-ne v10, v1, :cond_9

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kg;->a(Ljava/lang/Object;)V

    :goto_6
    invoke-virtual {p0, v11}, Lcom/google/android/gms/internal/iw;->a(Ljava/util/List;)V

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/iw;->b(Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_9
    const/4 v1, 0x0

    add-int/lit8 v2, v10, 0x1

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kg;->a(Ljava/lang/Object;)V

    goto :goto_6

    :cond_a
    return-void
.end method

.method private a(Lcom/google/android/gms/internal/lf;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 0
    sget-object v0, Lcom/google/android/gms/internal/il;->b:Lcom/google/android/gms/internal/lf;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lf;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/iw;->a:Lcom/google/android/gms/internal/mr;

    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 23000
    iput-wide v2, v1, Lcom/google/android/gms/internal/mr;->a:J

    .line 0
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/iu;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/lf;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/internal/il;->a:Lcom/google/android/gms/internal/lf;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/iu;-><init>([Lcom/google/android/gms/internal/lf;)V

    .line 25000
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/lk;->h()Lcom/google/android/gms/internal/lk;

    move-result-object v1

    .line 24000
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/lt;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v1

    .line 0
    iget-object v2, p0, Lcom/google/android/gms/internal/iw;->j:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/jb;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/iw;->f:Lcom/google/android/gms/internal/je;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/iw;->a(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/google/firebase/database/c; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/iw;->c:Lcom/google/android/gms/internal/lc;

    const-string/jumbo v2, "Failed to parse info update"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;Lcom/google/android/gms/internal/iu;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/iw$a;",
            ">;",
            "Lcom/google/android/gms/internal/iu;",
            ")V"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/iw$a;

    invoke-static {v0}, Lcom/google/android/gms/internal/iw$a;->b(Lcom/google/android/gms/internal/iw$a;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/iw;->a(Lcom/google/android/gms/internal/iu;Ljava/util/List;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ls;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/iw$a;

    sget-boolean v4, Lcom/google/android/gms/internal/iw;->h:Z

    if-nez v4, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/internal/iw$a;->c(Lcom/google/android/gms/internal/iw$a;)I

    move-result v4

    sget v5, Lcom/google/android/gms/internal/iw$b;->b:I

    if-eq v4, v5, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    sget v4, Lcom/google/android/gms/internal/iw$b;->c:I

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/iw$a;->a(Lcom/google/android/gms/internal/iw$a;I)I

    invoke-static {v0}, Lcom/google/android/gms/internal/iw$a;->d(Lcom/google/android/gms/internal/iw$a;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/iw$a;->e(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/iu;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/google/android/gms/internal/iu;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/iu;

    move-result-object v4

    invoke-static {v0}, Lcom/google/android/gms/internal/iw$a;->f(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ls;->a(Z)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iw;->c()J

    iget-object v1, p0, Lcom/google/android/gms/internal/iw;->b:Lcom/google/android/gms/internal/ic;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/iu;->c()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/iw$16;

    invoke-direct {v4, p0, p2, p1, p0}, Lcom/google/android/gms/internal/iw$16;-><init>(Lcom/google/android/gms/internal/iw;Lcom/google/android/gms/internal/iu;Ljava/util/List;Lcom/google/android/gms/internal/iw;)V

    invoke-interface {v1, v3, v0, v2, v4}, Lcom/google/android/gms/internal/ic;->a(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/if;)V

    return-void
.end method

.method private a(Ljava/util/List;Lcom/google/android/gms/internal/kg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/iw$a;",
            ">;",
            "Lcom/google/android/gms/internal/kg",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/iw$a;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 0
    .line 39000
    iget-object v0, p2, Lcom/google/android/gms/internal/kg;->a:Lcom/google/android/gms/internal/kh;

    iget-object v0, v0, Lcom/google/android/gms/internal/kh;->b:Ljava/lang/Object;

    .line 0
    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/iw$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/iw$5;-><init>(Lcom/google/android/gms/internal/iw;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/kg;->a(Lcom/google/android/gms/internal/kg$b;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/iw;Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/iu;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iw;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/iu;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/iw;)Lcom/google/android/gms/internal/lc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->c:Lcom/google/android/gms/internal/lc;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/iw;Lcom/google/android/gms/internal/kg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/iw;->b(Lcom/google/android/gms/internal/kg;)V

    return-void
.end method

.method private b(Lcom/google/android/gms/internal/kg;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/kg",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/iw$a;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 0
    .line 31000
    iget-object v0, p1, Lcom/google/android/gms/internal/kg;->a:Lcom/google/android/gms/internal/kh;

    iget-object v0, v0, Lcom/google/android/gms/internal/kh;->b:Ljava/lang/Object;

    .line 0
    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/iw$a;

    invoke-static {v1}, Lcom/google/android/gms/internal/iw$a;->c(Lcom/google/android/gms/internal/iw$a;)I

    move-result v1

    sget v3, Lcom/google/android/gms/internal/iw$b;->d:I

    if-ne v1, v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kg;->a(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/iw$17;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/iw$17;-><init>(Lcom/google/android/gms/internal/iw;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kg;->a(Lcom/google/android/gms/internal/kg$b;)V

    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kg;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/google/android/gms/internal/iw;)Lcom/google/android/gms/internal/ic;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->b:Lcom/google/android/gms/internal/ic;

    return-object v0
.end method

.method private c(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/kg;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/iu;",
            ")",
            "Lcom/google/android/gms/internal/kg",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/iw$a;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->l:Lcom/google/android/gms/internal/kg;

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/iu;->h()Z

    move-result v1

    if-nez v1, :cond_0

    .line 38000
    iget-object v1, v0, Lcom/google/android/gms/internal/kg;->a:Lcom/google/android/gms/internal/kh;

    iget-object v1, v1, Lcom/google/android/gms/internal/kh;->b:Ljava/lang/Object;

    .line 0
    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/iu;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/internal/lf;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/iu;->d()Lcom/google/android/gms/internal/lf;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/iu;-><init>([Lcom/google/android/gms/internal/lf;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/kg;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/kg;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/iu;->e()Lcom/google/android/gms/internal/iu;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private c(Lcom/google/android/gms/internal/kg;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/kg",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/iw$a;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/iw$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/iw;->a(Ljava/util/List;Lcom/google/android/gms/internal/kg;)V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/iw;)Lcom/google/android/gms/internal/jb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->j:Lcom/google/android/gms/internal/jb;

    return-object v0
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->l:Lcom/google/android/gms/internal/kg;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/iw;->b(Lcom/google/android/gms/internal/kg;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/iw;->a(Lcom/google/android/gms/internal/kg;)V

    return-void
.end method

.method static synthetic e(Lcom/google/android/gms/internal/iw;)Lcom/google/android/gms/internal/je;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->f:Lcom/google/android/gms/internal/je;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/iw;)Lcom/google/android/gms/internal/je;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->g:Lcom/google/android/gms/internal/je;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/iw;)Lcom/google/android/gms/internal/mr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->a:Lcom/google/android/gms/internal/mr;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/internal/iw;)Lcom/google/android/gms/internal/kg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->l:Lcom/google/android/gms/internal/kg;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/gms/internal/iw;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/iw;->d()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/iu;
    .locals 19

    .prologue
    .line 0
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/iw;->c(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/kg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/kg;->a()Lcom/google/android/gms/internal/iu;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/iw;->c(Lcom/google/android/gms/internal/kg;)Ljava/util/List;

    move-result-object v3

    .line 32000
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/iw$a;

    invoke-static {v2}, Lcom/google/android/gms/internal/iw$a;->b(Lcom/google/android/gms/internal/iw$a;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_1
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/google/android/gms/internal/iw$a;

    invoke-static {v10}, Lcom/google/android/gms/internal/iw$a;->e(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/iu;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/google/android/gms/internal/iu;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/iu;

    move-result-object v2

    const/4 v12, 0x0

    const/4 v11, 0x0

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v3, Lcom/google/android/gms/internal/iw;->h:Z

    if-nez v3, :cond_2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_2
    invoke-static {v10}, Lcom/google/android/gms/internal/iw$a;->c(Lcom/google/android/gms/internal/iw$a;)I

    move-result v2

    sget v3, Lcom/google/android/gms/internal/iw$b;->f:I

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    invoke-static {v10}, Lcom/google/android/gms/internal/iw$a;->j(Lcom/google/android/gms/internal/iw$a;)Lcom/google/firebase/database/b;

    move-result-object v9

    .line 33000
    iget v3, v9, Lcom/google/firebase/database/b;->a:I

    .line 32000
    const/16 v4, -0x19

    if-eq v3, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/iw;->g:Lcom/google/android/gms/internal/je;

    invoke-static {v10}, Lcom/google/android/gms/internal/iw$a;->b(Lcom/google/android/gms/internal/iw$a;)J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/iw;->a:Lcom/google/android/gms/internal/mr;

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/je;->a(JZZLcom/google/android/gms/internal/mm;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/iw;->a(Ljava/util/List;)V

    if-eqz v2, :cond_1

    sget v2, Lcom/google/android/gms/internal/iw$b;->d:I

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/iw$a;->a(Lcom/google/android/gms/internal/iw$a;I)I

    invoke-static {v10}, Lcom/google/android/gms/internal/iw$a;->e(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/iu;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/firebase/database/o;->a(Lcom/google/android/gms/internal/iw;Lcom/google/android/gms/internal/iu;)Lcom/google/firebase/database/d;

    move-result-object v2

    invoke-static {v10}, Lcom/google/android/gms/internal/iw$a;->a(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/ls;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lm;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/firebase/database/o;->a(Lcom/google/firebase/database/d;Lcom/google/android/gms/internal/lm;)Lcom/google/firebase/database/a;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/iw$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v10}, Lcom/google/android/gms/internal/iw$2;-><init>(Lcom/google/android/gms/internal/iw;Lcom/google/android/gms/internal/iw$a;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/iw;->a(Ljava/lang/Runnable;)V

    new-instance v3, Lcom/google/android/gms/internal/iw$3;

    invoke-direct {v3, v10, v9, v2}, Lcom/google/android/gms/internal/iw$3;-><init>(Lcom/google/android/gms/internal/iw$a;Lcom/google/firebase/database/b;Lcom/google/firebase/database/a;)V

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    invoke-static {v10}, Lcom/google/android/gms/internal/iw$a;->c(Lcom/google/android/gms/internal/iw$a;)I

    move-result v2

    sget v3, Lcom/google/android/gms/internal/iw$b;->b:I

    if-ne v2, v3, :cond_a

    invoke-static {v10}, Lcom/google/android/gms/internal/iw$a;->k(Lcom/google/android/gms/internal/iw$a;)I

    move-result v2

    const/16 v3, 0x19

    if-lt v2, v3, :cond_5

    const/4 v2, 0x1

    const-string/jumbo v3, "maxretries"

    invoke-static {v3}, Lcom/google/firebase/database/b;->a(Ljava/lang/String;)Lcom/google/firebase/database/b;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/iw;->g:Lcom/google/android/gms/internal/je;

    invoke-static {v10}, Lcom/google/android/gms/internal/iw$a;->b(Lcom/google/android/gms/internal/iw$a;)J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/iw;->a:Lcom/google/android/gms/internal/mr;

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/je;->a(JZZLcom/google/android/gms/internal/mm;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_5
    invoke-static {v10}, Lcom/google/android/gms/internal/iw$a;->e(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/iu;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15}, Lcom/google/android/gms/internal/iw;->a(Lcom/google/android/gms/internal/iu;Ljava/util/List;)Lcom/google/android/gms/internal/ls;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/iw$a;->a(Lcom/google/android/gms/internal/iw$a;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    .line 34000
    new-instance v3, Lcom/google/firebase/database/i;

    invoke-direct {v3, v2}, Lcom/google/firebase/database/i;-><init>(Lcom/google/android/gms/internal/ls;)V

    .line 32000
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v10}, Lcom/google/android/gms/internal/iw$a;->h(Lcom/google/android/gms/internal/iw$a;)Lcom/google/firebase/database/m$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/firebase/database/m$a;->a()Lcom/google/firebase/database/m$b;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v9, v3

    .line 36000
    :goto_3
    iget-boolean v3, v2, Lcom/google/firebase/database/m$b;->a:Z

    .line 32000
    if-eqz v3, :cond_6

    invoke-static {v10}, Lcom/google/android/gms/internal/iw$a;->b(Lcom/google/android/gms/internal/iw$a;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/iw;->a:Lcom/google/android/gms/internal/mr;

    invoke-static {v3}, Lcom/google/android/gms/internal/ja;->a(Lcom/google/android/gms/internal/mm;)Ljava/util/Map;

    move-result-object v3

    .line 37000
    iget-object v4, v2, Lcom/google/firebase/database/m$b;->b:Lcom/google/android/gms/internal/ls;

    .line 32000
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ja;->a(Lcom/google/android/gms/internal/ls;Ljava/util/Map;)Lcom/google/android/gms/internal/ls;

    move-result-object v5

    invoke-static {v10, v4}, Lcom/google/android/gms/internal/iw$a;->b(Lcom/google/android/gms/internal/iw$a;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    invoke-static {v10, v5}, Lcom/google/android/gms/internal/iw$a;->c(Lcom/google/android/gms/internal/iw$a;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/iw;->c()J

    move-result-wide v2

    invoke-static {v10, v2, v3}, Lcom/google/android/gms/internal/iw$a;->a(Lcom/google/android/gms/internal/iw$a;J)J

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/iw;->g:Lcom/google/android/gms/internal/je;

    invoke-static {v10}, Lcom/google/android/gms/internal/iw$a;->e(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/iu;

    move-result-object v3

    invoke-static {v10}, Lcom/google/android/gms/internal/iw$a;->b(Lcom/google/android/gms/internal/iw$a;)J

    move-result-wide v6

    invoke-static {v10}, Lcom/google/android/gms/internal/iw$a;->l(Lcom/google/android/gms/internal/iw$a;)Z

    move-result v8

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ls;JZZ)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/iw;->g:Lcom/google/android/gms/internal/je;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/iw;->a:Lcom/google/android/gms/internal/mr;

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/je;->a(JZZLcom/google/android/gms/internal/mm;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v9, v11

    move v2, v12

    goto/16 :goto_2

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/google/firebase/database/b;->a(Ljava/lang/Throwable;)Lcom/google/firebase/database/b;

    move-result-object v3

    .line 35000
    new-instance v2, Lcom/google/firebase/database/m$b;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/google/firebase/database/m$b;-><init>(B)V

    move-object v9, v3

    .line 32000
    goto :goto_3

    :cond_6
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/iw;->g:Lcom/google/android/gms/internal/je;

    invoke-static {v10}, Lcom/google/android/gms/internal/iw$a;->b(Lcom/google/android/gms/internal/iw$a;)J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/iw;->a:Lcom/google/android/gms/internal/mr;

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/je;->a(JZZLcom/google/android/gms/internal/mm;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/iw;->l:Lcom/google/android/gms/internal/kg;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/iw;->b(Lcom/google/android/gms/internal/kg;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_4
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_8

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/iw;->b(Ljava/lang/Runnable;)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/iw;->d()V

    .line 0
    :cond_9
    return-object v13

    :cond_a
    move-object v9, v11

    move v2, v12

    goto/16 :goto_2
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 0
    sget-object v0, Lcom/google/android/gms/internal/il;->d:Lcom/google/android/gms/internal/lf;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 18000
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/iw;->a(Lcom/google/android/gms/internal/lf;Ljava/lang/Object;)V

    .line 0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ip;)V
    .locals 2

    .prologue
    .line 0
    sget-object v0, Lcom/google/android/gms/internal/il;->a:Lcom/google/android/gms/internal/lf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ip;->a()Lcom/google/android/gms/internal/kr;

    move-result-object v1

    .line 17000
    iget-object v1, v1, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/iu;->d()Lcom/google/android/gms/internal/lf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/lf;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->f:Lcom/google/android/gms/internal/je;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/je;->b(Lcom/google/android/gms/internal/ip;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/iw;->a(Ljava/util/List;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->g:Lcom/google/android/gms/internal/je;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/je;->b(Lcom/google/android/gms/internal/ip;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->o:Lcom/google/android/gms/internal/in;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/in;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->o:Lcom/google/android/gms/internal/in;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/in;->i()Lcom/google/android/gms/internal/iz;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/iz;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/km;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->n:Lcom/google/android/gms/internal/kp;

    .line 1000
    iget-object v1, v0, Lcom/google/android/gms/internal/kp;->b:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/kp;->b:Lcom/google/android/gms/internal/lc;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x1c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Raising "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " event(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 2000
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1000
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/kp;->a:Lcom/google/android/gms/internal/ir;

    new-instance v3, Lcom/google/android/gms/internal/kp$1;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/internal/kp$1;-><init>(Lcom/google/android/gms/internal/kp;Ljava/util/ArrayList;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ir;->a(Ljava/lang/Runnable;)V

    .line 0
    :cond_1
    return-void
.end method

.method public final a(Ljava/util/List;Ljava/lang/Object;ZLjava/lang/Long;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 0
    new-instance v1, Lcom/google/android/gms/internal/iu;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/iu;-><init>(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->c:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->c:Lcom/google/android/gms/internal/lc;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xe

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "onDataUpdate: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    .line 3000
    invoke-virtual {v0, v2, v7, v3}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 0
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->d:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->c:Lcom/google/android/gms/internal/lc;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xf

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "onDataUpdate: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    .line 4000
    invoke-virtual {v0, v2, v7, v3}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 0
    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/iw;->e:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/iw;->e:J

    if-eqz p4, :cond_5

    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/jf;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/google/android/gms/internal/jf;-><init>(J)V

    if-eqz p3, :cond_4

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 6000
    invoke-static {}, Lcom/google/android/gms/internal/lk;->h()Lcom/google/android/gms/internal/lk;

    move-result-object v6

    .line 5000
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/lt;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v5

    .line 0
    new-instance v6, Lcom/google/android/gms/internal/iu;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/iu;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/firebase/database/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/iw;->c:Lcom/google/android/gms/internal/lc;

    const-string/jumbo v2, "FIREBASE INTERNAL ERROR"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->g:Lcom/google/android/gms/internal/je;

    .line 7000
    iget-object v4, v0, Lcom/google/android/gms/internal/je;->d:Lcom/google/android/gms/internal/jz;

    new-instance v5, Lcom/google/android/gms/internal/je$7;

    invoke-direct {v5, v0, v2, v1, v3}, Lcom/google/android/gms/internal/je$7;-><init>(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/jf;Lcom/google/android/gms/internal/iu;Ljava/util/Map;)V

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/jz;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 0
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/iw;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/iu;

    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/iw;->a(Ljava/util/List;)V

    goto :goto_1

    .line 9000
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/lk;->h()Lcom/google/android/gms/internal/lk;

    move-result-object v0

    .line 8000
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/lt;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    .line 0
    iget-object v3, p0, Lcom/google/android/gms/internal/iw;->g:Lcom/google/android/gms/internal/je;

    invoke-virtual {v3, v1, v0, v2}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/jf;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_5
    if-eqz p3, :cond_7

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 11000
    invoke-static {}, Lcom/google/android/gms/internal/lk;->h()Lcom/google/android/gms/internal/lk;

    move-result-object v5

    .line 10000
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/lt;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v4

    .line 0
    new-instance v5, Lcom/google/android/gms/internal/iu;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/iu;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->g:Lcom/google/android/gms/internal/je;

    .line 12000
    iget-object v3, v0, Lcom/google/android/gms/internal/je;->d:Lcom/google/android/gms/internal/jz;

    new-instance v4, Lcom/google/android/gms/internal/je$3;

    invoke-direct {v4, v0, v2, v1}, Lcom/google/android/gms/internal/je$3;-><init>(Lcom/google/android/gms/internal/je;Ljava/util/Map;Lcom/google/android/gms/internal/iu;)V

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/jz;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_2

    .line 14000
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/lk;->h()Lcom/google/android/gms/internal/lk;

    move-result-object v0

    .line 13000
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/lt;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    .line 0
    iget-object v2, p0, Lcom/google/android/gms/internal/iw;->g:Lcom/google/android/gms/internal/je;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)Ljava/util/List;
    :try_end_1
    .catch Lcom/google/firebase/database/c; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2
.end method

.method public final a(Ljava/util/List;Ljava/util/List;Ljava/lang/Long;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ie;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 0
    new-instance v1, Lcom/google/android/gms/internal/iu;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/iu;-><init>(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->c:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->c:Lcom/google/android/gms/internal/lc;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "onRangeMergeUpdate: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    .line 15000
    invoke-virtual {v0, v2, v7, v3}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 0
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->d:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->c:Lcom/google/android/gms/internal/lc;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x15

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "onRangeMergeUpdate: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    .line 16000
    invoke-virtual {v0, v2, v7, v3}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 0
    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/iw;->e:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/iw;->e:J

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ie;

    new-instance v4, Lcom/google/android/gms/internal/lx;

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/lx;-><init>(Lcom/google/android/gms/internal/ie;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->g:Lcom/google/android/gms/internal/je;

    new-instance v3, Lcom/google/android/gms/internal/jf;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/jf;-><init>(J)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/iu;Ljava/util/List;Lcom/google/android/gms/internal/jf;)Ljava/util/List;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/iw;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/iu;

    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/iw;->a(Ljava/util/List;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->g:Lcom/google/android/gms/internal/je;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/iu;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public final a(Ljava/util/Map;)V
    .locals 3
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

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/lf;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/lf;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/iw;->a(Lcom/google/android/gms/internal/lf;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 0
    sget-object v0, Lcom/google/android/gms/internal/il;->c:Lcom/google/android/gms/internal/lf;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 22000
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/iw;->a(Lcom/google/android/gms/internal/lf;Ljava/lang/Object;)V

    .line 0
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/iu;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/iw;->c(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/kg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kg;->a()Lcom/google/android/gms/internal/iu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/iw;->p:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/iw;->c:Lcom/google/android/gms/internal/lc;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2c

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Aborting transactions for path: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ". Affected: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    .line 40000
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 0
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/iw;->l:Lcom/google/android/gms/internal/kg;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/kg;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/kg;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/iw$6;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/iw$6;-><init>(Lcom/google/android/gms/internal/iw;)V

    .line 41000
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/kg;->a(Lcom/google/android/gms/internal/kg$a;)Z

    .line 0
    const/16 v2, -0x9

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/iw;->a(Lcom/google/android/gms/internal/kg;I)V

    new-instance v2, Lcom/google/android/gms/internal/iw$7;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/iw$7;-><init>(Lcom/google/android/gms/internal/iw;)V

    .line 42000
    invoke-virtual {v1, v2, v6, v6}, Lcom/google/android/gms/internal/kg;->a(Lcom/google/android/gms/internal/kg$b;ZZ)V

    .line 0
    return-object v0
.end method

.method public final b()V
    .locals 5

    .prologue
    .line 0
    sget-object v0, Lcom/google/android/gms/internal/il;->d:Lcom/google/android/gms/internal/lf;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 19000
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/iw;->a(Lcom/google/android/gms/internal/lf;Ljava/lang/Object;)V

    .line 20000
    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->a:Lcom/google/android/gms/internal/mr;

    invoke-static {v0}, Lcom/google/android/gms/internal/ja;->a(Lcom/google/android/gms/internal/mm;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/iw;->k:Lcom/google/android/gms/internal/jc;

    .line 21000
    new-instance v2, Lcom/google/android/gms/internal/jc;

    invoke-direct {v2}, Lcom/google/android/gms/internal/jc;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/iu;

    const-string/jumbo v4, ""

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/iu;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/internal/ja$1;

    invoke-direct {v4, v2, v0}, Lcom/google/android/gms/internal/ja$1;-><init>(Lcom/google/android/gms/internal/jc;Ljava/util/Map;)V

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/jc;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/jc$b;)V

    .line 20000
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/iu;->a()Lcom/google/android/gms/internal/iu;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/iw$14;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/iw$14;-><init>(Lcom/google/android/gms/internal/iw;Ljava/util/List;)V

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/jc;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/jc$b;)V

    new-instance v1, Lcom/google/android/gms/internal/jc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/jc;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/iw;->k:Lcom/google/android/gms/internal/jc;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/iw;->a(Ljava/util/List;)V

    .line 0
    return-void
.end method

.method public final b(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->o:Lcom/google/android/gms/internal/in;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/in;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->o:Lcom/google/android/gms/internal/in;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/in;->h()Lcom/google/android/gms/internal/ir;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ir;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/iw;->q:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/iw;->q:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->i:Lcom/google/android/gms/internal/ix;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
