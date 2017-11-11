.class public final Lcom/avast/android/burger/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avast/android/burger/b$a;
    }
.end annotation


# static fields
.field private static final E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:J

.field public static final b:J

.field public static final c:J


# instance fields
.field public final A:Z

.field public final B:Lcom/avast/android/burger/c;

.field public final C:Ljava/lang/String;

.field public final D:Z

.field private final F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final G:Z

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:I

.field public final i:Ljava/lang/String;

.field public final j:I

.field public final k:I

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:I

.field public final p:J

.field public final q:I

.field public final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avast/android/burger/internal/config/ABNTest;",
            ">;"
        }
    .end annotation
.end field

.field public final s:J

.field public final t:J

.field public final u:Z

.field final v:I

.field final w:J

.field public final x:Ljava/lang/String;

.field public final y:Ljava/lang/String;

.field public final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 43
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/avast/android/burger/b;->a:J

    .line 49
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/avast/android/burger/b;->b:J

    .line 55
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/avast/android/burger/b;->c:J

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/avast/android/burger/b;->E:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Lcom/avast/android/burger/b$a;)V
    .locals 2

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1785
    iget-object v0, p1, Lcom/avast/android/burger/b$a;->a:Ljava/lang/String;

    .line 288
    iput-object v0, p0, Lcom/avast/android/burger/b;->d:Ljava/lang/String;

    .line 2785
    iget-object v0, p1, Lcom/avast/android/burger/b$a;->b:Ljava/lang/String;

    .line 289
    iput-object v0, p0, Lcom/avast/android/burger/b;->e:Ljava/lang/String;

    .line 3785
    iget-object v0, p1, Lcom/avast/android/burger/b$a;->c:Ljava/lang/String;

    .line 290
    iput-object v0, p0, Lcom/avast/android/burger/b;->f:Ljava/lang/String;

    .line 4785
    iget v0, p1, Lcom/avast/android/burger/b$a;->e:I

    .line 291
    iput v0, p0, Lcom/avast/android/burger/b;->g:I

    .line 5785
    iget v0, p1, Lcom/avast/android/burger/b$a;->f:I

    .line 292
    iput v0, p0, Lcom/avast/android/burger/b;->h:I

    .line 6785
    iget-object v0, p1, Lcom/avast/android/burger/b$a;->g:Ljava/lang/String;

    .line 293
    iput-object v0, p0, Lcom/avast/android/burger/b;->i:Ljava/lang/String;

    .line 7785
    iget v0, p1, Lcom/avast/android/burger/b$a;->h:I

    .line 294
    iput v0, p0, Lcom/avast/android/burger/b;->j:I

    .line 8785
    iget v0, p1, Lcom/avast/android/burger/b$a;->i:I

    .line 295
    iput v0, p0, Lcom/avast/android/burger/b;->k:I

    .line 9785
    iget-object v0, p1, Lcom/avast/android/burger/b$a;->d:Ljava/lang/String;

    .line 296
    iput-object v0, p0, Lcom/avast/android/burger/b;->l:Ljava/lang/String;

    .line 10785
    iget-object v0, p1, Lcom/avast/android/burger/b$a;->o:Ljava/lang/String;

    .line 297
    iput-object v0, p0, Lcom/avast/android/burger/b;->m:Ljava/lang/String;

    .line 11785
    iget-wide v0, p1, Lcom/avast/android/burger/b$a;->k:J

    .line 298
    iput-wide v0, p0, Lcom/avast/android/burger/b;->p:J

    .line 12785
    iget v0, p1, Lcom/avast/android/burger/b$a;->j:I

    .line 299
    iput v0, p0, Lcom/avast/android/burger/b;->o:I

    .line 13785
    iget v0, p1, Lcom/avast/android/burger/b$a;->m:I

    .line 300
    iput v0, p0, Lcom/avast/android/burger/b;->q:I

    .line 14785
    iget-object v0, p1, Lcom/avast/android/burger/b$a;->n:Ljava/util/ArrayList;

    .line 301
    iput-object v0, p0, Lcom/avast/android/burger/b;->F:Ljava/util/ArrayList;

    .line 15785
    iget-object v0, p1, Lcom/avast/android/burger/b$a;->l:Ljava/lang/String;

    .line 302
    iput-object v0, p0, Lcom/avast/android/burger/b;->n:Ljava/lang/String;

    .line 16785
    iget-object v0, p1, Lcom/avast/android/burger/b$a;->p:Ljava/util/List;

    .line 303
    iput-object v0, p0, Lcom/avast/android/burger/b;->r:Ljava/util/List;

    .line 17785
    iget-wide v0, p1, Lcom/avast/android/burger/b$a;->q:J

    .line 304
    iput-wide v0, p0, Lcom/avast/android/burger/b;->s:J

    .line 18785
    iget-wide v0, p1, Lcom/avast/android/burger/b$a;->r:J

    .line 305
    iput-wide v0, p0, Lcom/avast/android/burger/b;->t:J

    .line 19785
    iget-boolean v0, p1, Lcom/avast/android/burger/b$a;->s:Z

    .line 306
    iput-boolean v0, p0, Lcom/avast/android/burger/b;->u:Z

    .line 20785
    iget v0, p1, Lcom/avast/android/burger/b$a;->t:I

    .line 307
    iput v0, p0, Lcom/avast/android/burger/b;->v:I

    .line 21785
    iget-wide v0, p1, Lcom/avast/android/burger/b$a;->u:J

    .line 308
    iput-wide v0, p0, Lcom/avast/android/burger/b;->w:J

    .line 22785
    iget-object v0, p1, Lcom/avast/android/burger/b$a;->v:Ljava/lang/String;

    .line 309
    iput-object v0, p0, Lcom/avast/android/burger/b;->x:Ljava/lang/String;

    .line 23785
    iget-object v0, p1, Lcom/avast/android/burger/b$a;->w:Ljava/lang/String;

    .line 310
    iput-object v0, p0, Lcom/avast/android/burger/b;->y:Ljava/lang/String;

    .line 24785
    iget-object v0, p1, Lcom/avast/android/burger/b$a;->x:Ljava/lang/String;

    .line 311
    iput-object v0, p0, Lcom/avast/android/burger/b;->z:Ljava/lang/String;

    .line 25785
    iget-boolean v0, p1, Lcom/avast/android/burger/b$a;->y:Z

    .line 312
    iput-boolean v0, p0, Lcom/avast/android/burger/b;->A:Z

    .line 26785
    iget-object v0, p1, Lcom/avast/android/burger/b$a;->z:Lcom/avast/android/burger/c;

    .line 313
    iput-object v0, p0, Lcom/avast/android/burger/b;->B:Lcom/avast/android/burger/c;

    .line 27785
    iget-object v0, p1, Lcom/avast/android/burger/b$a;->A:Ljava/lang/String;

    .line 314
    iput-object v0, p0, Lcom/avast/android/burger/b;->C:Ljava/lang/String;

    .line 28785
    iget-boolean v0, p1, Lcom/avast/android/burger/b$a;->B:Z

    .line 315
    iput-boolean v0, p0, Lcom/avast/android/burger/b;->G:Z

    .line 29785
    iget-boolean v0, p1, Lcom/avast/android/burger/b$a;->C:Z

    .line 316
    iput-boolean v0, p0, Lcom/avast/android/burger/b;->D:Z

    .line 317
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/burger/b$a;B)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/avast/android/burger/b;-><init>(Lcom/avast/android/burger/b$a;)V

    return-void
.end method

.method static synthetic A(Lcom/avast/android/burger/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/avast/android/burger/b;->C:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic B(Lcom/avast/android/burger/b;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/avast/android/burger/b;->G:Z

    return v0
.end method

.method static synthetic C(Lcom/avast/android/burger/b;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/avast/android/burger/b;->D:Z

    return v0
.end method

.method public static a()Lcom/avast/android/burger/b$a;
    .locals 2

    .prologue
    .line 325
    new-instance v0, Lcom/avast/android/burger/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/avast/android/burger/b$a;-><init>(B)V

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/burger/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/avast/android/burger/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 4

    .prologue
    const/16 v3, 0x5d

    .line 630
    const-string/jumbo v0, "[ "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 632
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 639
    :goto_0
    return-void

    .line 635
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 636
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 638
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static synthetic b(Lcom/avast/android/burger/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/avast/android/burger/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/avast/android/burger/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/avast/android/burger/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/avast/android/burger/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/avast/android/burger/b;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/avast/android/burger/b;->E:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/avast/android/burger/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/avast/android/burger/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/avast/android/burger/b;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/avast/android/burger/b;->g:I

    return v0
.end method

.method static synthetic g(Lcom/avast/android/burger/b;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/avast/android/burger/b;->h:I

    return v0
.end method

.method static synthetic h(Lcom/avast/android/burger/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/avast/android/burger/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/avast/android/burger/b;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/avast/android/burger/b;->j:I

    return v0
.end method

.method static synthetic j(Lcom/avast/android/burger/b;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/avast/android/burger/b;->k:I

    return v0
.end method

.method static synthetic k(Lcom/avast/android/burger/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/avast/android/burger/b;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/avast/android/burger/b;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/avast/android/burger/b;->o:I

    return v0
.end method

.method static synthetic m(Lcom/avast/android/burger/b;)J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/avast/android/burger/b;->p:J

    return-wide v0
.end method

.method static synthetic n(Lcom/avast/android/burger/b;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/avast/android/burger/b;->q:I

    return v0
.end method

.method static synthetic o(Lcom/avast/android/burger/b;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/avast/android/burger/b;->F:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic p(Lcom/avast/android/burger/b;)Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/avast/android/burger/b;->r:Ljava/util/List;

    return-object v0
.end method

.method static synthetic q(Lcom/avast/android/burger/b;)J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/avast/android/burger/b;->s:J

    return-wide v0
.end method

.method static synthetic r(Lcom/avast/android/burger/b;)J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/avast/android/burger/b;->t:J

    return-wide v0
.end method

.method static synthetic s(Lcom/avast/android/burger/b;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/avast/android/burger/b;->u:Z

    return v0
.end method

.method static synthetic t(Lcom/avast/android/burger/b;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/avast/android/burger/b;->v:I

    return v0
.end method

.method static synthetic u(Lcom/avast/android/burger/b;)J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/avast/android/burger/b;->w:J

    return-wide v0
.end method

.method static synthetic v(Lcom/avast/android/burger/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/avast/android/burger/b;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic w(Lcom/avast/android/burger/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/avast/android/burger/b;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic x(Lcom/avast/android/burger/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/avast/android/burger/b;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic y(Lcom/avast/android/burger/b;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/avast/android/burger/b;->A:Z

    return v0
.end method

.method static synthetic z(Lcom/avast/android/burger/b;)Lcom/avast/android/burger/c;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/avast/android/burger/b;->B:Lcom/avast/android/burger/c;

    return-object v0
.end method


# virtual methods
.method public final b()Lcom/avast/android/burger/b$a;
    .locals 2

    .prologue
    .line 334
    new-instance v0, Lcom/avast/android/burger/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avast/android/burger/b$a;-><init>(Lcom/avast/android/burger/b;B)V

    return-object v0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 644
    iget-boolean v0, p0, Lcom/avast/android/burger/b;->G:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 649
    if-ne p0, p1, :cond_1

    .line 744
    :cond_0
    :goto_0
    return v0

    .line 652
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 653
    goto :goto_0

    .line 656
    :cond_3
    check-cast p1, Lcom/avast/android/burger/b;

    .line 658
    iget v2, p0, Lcom/avast/android/burger/b;->g:I

    iget v3, p1, Lcom/avast/android/burger/b;->g:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 659
    goto :goto_0

    .line 661
    :cond_4
    iget v2, p0, Lcom/avast/android/burger/b;->h:I

    iget v3, p1, Lcom/avast/android/burger/b;->h:I

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 662
    goto :goto_0

    .line 664
    :cond_5
    iget v2, p0, Lcom/avast/android/burger/b;->j:I

    iget v3, p1, Lcom/avast/android/burger/b;->j:I

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 665
    goto :goto_0

    .line 667
    :cond_6
    iget v2, p0, Lcom/avast/android/burger/b;->k:I

    iget v3, p1, Lcom/avast/android/burger/b;->k:I

    if-eq v2, v3, :cond_7

    move v0, v1

    .line 668
    goto :goto_0

    .line 670
    :cond_7
    iget v2, p0, Lcom/avast/android/burger/b;->o:I

    iget v3, p1, Lcom/avast/android/burger/b;->o:I

    if-eq v2, v3, :cond_8

    move v0, v1

    .line 671
    goto :goto_0

    .line 673
    :cond_8
    iget-wide v2, p0, Lcom/avast/android/burger/b;->p:J

    iget-wide v4, p1, Lcom/avast/android/burger/b;->p:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    move v0, v1

    .line 674
    goto :goto_0

    .line 676
    :cond_9
    iget v2, p0, Lcom/avast/android/burger/b;->q:I

    iget v3, p1, Lcom/avast/android/burger/b;->q:I

    if-eq v2, v3, :cond_a

    move v0, v1

    .line 677
    goto :goto_0

    .line 679
    :cond_a
    iget-wide v2, p0, Lcom/avast/android/burger/b;->s:J

    iget-wide v4, p1, Lcom/avast/android/burger/b;->s:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    move v0, v1

    .line 680
    goto :goto_0

    .line 682
    :cond_b
    iget-wide v2, p0, Lcom/avast/android/burger/b;->t:J

    iget-wide v4, p1, Lcom/avast/android/burger/b;->t:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    move v0, v1

    .line 683
    goto :goto_0

    .line 685
    :cond_c
    iget-boolean v2, p0, Lcom/avast/android/burger/b;->u:Z

    iget-boolean v3, p1, Lcom/avast/android/burger/b;->u:Z

    if-eq v2, v3, :cond_d

    move v0, v1

    .line 686
    goto :goto_0

    .line 688
    :cond_d
    iget v2, p0, Lcom/avast/android/burger/b;->v:I

    iget v3, p1, Lcom/avast/android/burger/b;->v:I

    if-eq v2, v3, :cond_e

    move v0, v1

    .line 689
    goto :goto_0

    .line 691
    :cond_e
    iget-wide v2, p0, Lcom/avast/android/burger/b;->w:J

    iget-wide v4, p1, Lcom/avast/android/burger/b;->w:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    move v0, v1

    .line 692
    goto :goto_0

    .line 694
    :cond_f
    iget-boolean v2, p0, Lcom/avast/android/burger/b;->A:Z

    iget-boolean v3, p1, Lcom/avast/android/burger/b;->A:Z

    if-eq v2, v3, :cond_10

    move v0, v1

    .line 695
    goto :goto_0

    .line 697
    :cond_10
    iget-boolean v2, p0, Lcom/avast/android/burger/b;->G:Z

    iget-boolean v3, p1, Lcom/avast/android/burger/b;->G:Z

    if-eq v2, v3, :cond_11

    move v0, v1

    .line 698
    goto/16 :goto_0

    .line 700
    :cond_11
    iget-object v2, p0, Lcom/avast/android/burger/b;->d:Ljava/lang/String;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/avast/android/burger/b;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/avast/android/burger/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    :cond_12
    move v0, v1

    .line 701
    goto/16 :goto_0

    .line 700
    :cond_13
    iget-object v2, p1, Lcom/avast/android/burger/b;->d:Ljava/lang/String;

    if-nez v2, :cond_12

    .line 703
    :cond_14
    iget-object v2, p0, Lcom/avast/android/burger/b;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/avast/android/burger/b;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    move v0, v1

    .line 704
    goto/16 :goto_0

    .line 706
    :cond_15
    iget-object v2, p0, Lcom/avast/android/burger/b;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/avast/android/burger/b;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    move v0, v1

    .line 707
    goto/16 :goto_0

    .line 709
    :cond_16
    iget-object v2, p0, Lcom/avast/android/burger/b;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/avast/android/burger/b;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    move v0, v1

    .line 710
    goto/16 :goto_0

    .line 712
    :cond_17
    iget-object v2, p0, Lcom/avast/android/burger/b;->l:Ljava/lang/String;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/avast/android/burger/b;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/avast/android/burger/b;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    :cond_18
    move v0, v1

    .line 713
    goto/16 :goto_0

    .line 712
    :cond_19
    iget-object v2, p1, Lcom/avast/android/burger/b;->l:Ljava/lang/String;

    if-nez v2, :cond_18

    .line 715
    :cond_1a
    iget-object v2, p0, Lcom/avast/android/burger/b;->m:Ljava/lang/String;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/avast/android/burger/b;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/avast/android/burger/b;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_1b
    move v0, v1

    .line 716
    goto/16 :goto_0

    .line 715
    :cond_1c
    iget-object v2, p1, Lcom/avast/android/burger/b;->m:Ljava/lang/String;

    if-nez v2, :cond_1b

    .line 718
    :cond_1d
    iget-object v2, p0, Lcom/avast/android/burger/b;->n:Ljava/lang/String;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/avast/android/burger/b;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/avast/android/burger/b;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    :cond_1e
    move v0, v1

    .line 719
    goto/16 :goto_0

    .line 718
    :cond_1f
    iget-object v2, p1, Lcom/avast/android/burger/b;->n:Ljava/lang/String;

    if-nez v2, :cond_1e

    .line 721
    :cond_20
    iget-object v2, p0, Lcom/avast/android/burger/b;->F:Ljava/util/ArrayList;

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/avast/android/burger/b;->F:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/avast/android/burger/b;->F:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    :cond_21
    move v0, v1

    .line 723
    goto/16 :goto_0

    .line 721
    :cond_22
    iget-object v2, p1, Lcom/avast/android/burger/b;->F:Ljava/util/ArrayList;

    if-nez v2, :cond_21

    .line 725
    :cond_23
    iget-object v2, p0, Lcom/avast/android/burger/b;->r:Ljava/util/List;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/avast/android/burger/b;->r:Ljava/util/List;

    iget-object v3, p1, Lcom/avast/android/burger/b;->r:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    :cond_24
    move v0, v1

    .line 726
    goto/16 :goto_0

    .line 725
    :cond_25
    iget-object v2, p1, Lcom/avast/android/burger/b;->r:Ljava/util/List;

    if-nez v2, :cond_24

    .line 728
    :cond_26
    iget-object v2, p0, Lcom/avast/android/burger/b;->x:Ljava/lang/String;

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/avast/android/burger/b;->x:Ljava/lang/String;

    iget-object v3, p1, Lcom/avast/android/burger/b;->x:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    :cond_27
    move v0, v1

    .line 729
    goto/16 :goto_0

    .line 728
    :cond_28
    iget-object v2, p1, Lcom/avast/android/burger/b;->x:Ljava/lang/String;

    if-nez v2, :cond_27

    .line 731
    :cond_29
    iget-object v2, p0, Lcom/avast/android/burger/b;->y:Ljava/lang/String;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/avast/android/burger/b;->y:Ljava/lang/String;

    iget-object v3, p1, Lcom/avast/android/burger/b;->y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    :cond_2a
    move v0, v1

    .line 732
    goto/16 :goto_0

    .line 731
    :cond_2b
    iget-object v2, p1, Lcom/avast/android/burger/b;->y:Ljava/lang/String;

    if-nez v2, :cond_2a

    .line 734
    :cond_2c
    iget-object v2, p0, Lcom/avast/android/burger/b;->z:Ljava/lang/String;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/avast/android/burger/b;->z:Ljava/lang/String;

    iget-object v3, p1, Lcom/avast/android/burger/b;->z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    :cond_2d
    move v0, v1

    .line 735
    goto/16 :goto_0

    .line 734
    :cond_2e
    iget-object v2, p1, Lcom/avast/android/burger/b;->z:Ljava/lang/String;

    if-nez v2, :cond_2d

    .line 737
    :cond_2f
    iget-object v2, p0, Lcom/avast/android/burger/b;->B:Lcom/avast/android/burger/c;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/avast/android/burger/b;->B:Lcom/avast/android/burger/c;

    iget-object v3, p1, Lcom/avast/android/burger/b;->B:Lcom/avast/android/burger/c;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    :cond_30
    move v0, v1

    .line 739
    goto/16 :goto_0

    .line 737
    :cond_31
    iget-object v2, p1, Lcom/avast/android/burger/b;->B:Lcom/avast/android/burger/c;

    if-nez v2, :cond_30

    .line 741
    :cond_32
    iget-boolean v2, p0, Lcom/avast/android/burger/b;->D:Z

    iget-boolean v3, p1, Lcom/avast/android/burger/b;->D:Z

    if-eq v2, v3, :cond_33

    move v0, v1

    .line 742
    goto/16 :goto_0

    .line 744
    :cond_33
    iget-object v2, p0, Lcom/avast/android/burger/b;->C:Ljava/lang/String;

    if-eqz v2, :cond_34

    iget-object v0, p0, Lcom/avast/android/burger/b;->C:Ljava/lang/String;

    iget-object v1, p1, Lcom/avast/android/burger/b;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0

    :cond_34
    iget-object v2, p1, Lcom/avast/android/burger/b;->C:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 749
    iget-object v0, p0, Lcom/avast/android/burger/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/burger/b;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 750
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/avast/android/burger/b;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 751
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/avast/android/burger/b;->f:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 752
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/avast/android/burger/b;->g:I

    add-int/2addr v0, v3

    .line 753
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/avast/android/burger/b;->h:I

    add-int/2addr v0, v3

    .line 754
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/avast/android/burger/b;->i:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 755
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/avast/android/burger/b;->j:I

    add-int/2addr v0, v3

    .line 756
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/avast/android/burger/b;->k:I

    add-int/2addr v0, v3

    .line 757
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/avast/android/burger/b;->l:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avast/android/burger/b;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v3

    .line 758
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/avast/android/burger/b;->m:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/avast/android/burger/b;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v3

    .line 759
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/avast/android/burger/b;->n:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/avast/android/burger/b;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v3

    .line 760
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/avast/android/burger/b;->o:I

    add-int/2addr v0, v3

    .line 761
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/avast/android/burger/b;->p:J

    iget-wide v6, p0, Lcom/avast/android/burger/b;->p:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int/2addr v0, v3

    .line 762
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/avast/android/burger/b;->F:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/avast/android/burger/b;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v3

    .line 763
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/avast/android/burger/b;->q:I

    add-int/2addr v0, v3

    .line 764
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/avast/android/burger/b;->r:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/avast/android/burger/b;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v3

    .line 765
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/avast/android/burger/b;->s:J

    iget-wide v6, p0, Lcom/avast/android/burger/b;->s:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int/2addr v0, v3

    .line 766
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/avast/android/burger/b;->t:J

    iget-wide v6, p0, Lcom/avast/android/burger/b;->t:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int/2addr v0, v3

    .line 767
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/avast/android/burger/b;->u:Z

    if-eqz v0, :cond_6

    move v0, v2

    :goto_6
    add-int/2addr v0, v3

    .line 768
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/avast/android/burger/b;->v:I

    add-int/2addr v0, v3

    .line 769
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/avast/android/burger/b;->w:J

    iget-wide v6, p0, Lcom/avast/android/burger/b;->w:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int/2addr v0, v3

    .line 770
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/avast/android/burger/b;->x:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/avast/android/burger/b;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v3

    .line 771
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/avast/android/burger/b;->y:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/avast/android/burger/b;->y:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v3

    .line 772
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/avast/android/burger/b;->z:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/avast/android/burger/b;->z:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v3

    .line 773
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/avast/android/burger/b;->A:Z

    if-eqz v0, :cond_a

    move v0, v2

    :goto_a
    add-int/2addr v0, v3

    .line 774
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/avast/android/burger/b;->B:Lcom/avast/android/burger/c;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/avast/android/burger/b;->B:Lcom/avast/android/burger/c;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v3

    .line 775
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/avast/android/burger/b;->C:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/avast/android/burger/b;->C:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v3

    .line 776
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/avast/android/burger/b;->G:Z

    if-eqz v0, :cond_d

    move v0, v2

    :goto_d
    add-int/2addr v0, v3

    .line 777
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/avast/android/burger/b;->D:Z

    if-eqz v3, :cond_e

    :goto_e
    add-int/2addr v0, v2

    .line 778
    return v0

    :cond_0
    move v0, v1

    .line 749
    goto/16 :goto_0

    :cond_1
    move v0, v1

    .line 757
    goto/16 :goto_1

    :cond_2
    move v0, v1

    .line 758
    goto/16 :goto_2

    :cond_3
    move v0, v1

    .line 759
    goto/16 :goto_3

    :cond_4
    move v0, v1

    .line 762
    goto/16 :goto_4

    :cond_5
    move v0, v1

    .line 764
    goto/16 :goto_5

    :cond_6
    move v0, v1

    .line 767
    goto :goto_6

    :cond_7
    move v0, v1

    .line 770
    goto :goto_7

    :cond_8
    move v0, v1

    .line 771
    goto :goto_8

    :cond_9
    move v0, v1

    .line 772
    goto :goto_9

    :cond_a
    move v0, v1

    .line 773
    goto :goto_a

    :cond_b
    move v0, v1

    .line 774
    goto :goto_b

    :cond_c
    move v0, v1

    .line 775
    goto :goto_c

    :cond_d
    move v0, v1

    .line 776
    goto :goto_d

    :cond_e
    move v2, v1

    .line 777
    goto :goto_e
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 581
    const-string/jumbo v0, "Burger Config {"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    const-string/jumbo v0, "\n    auid: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 30343
    iget-object v2, p0, Lcom/avast/android/burger/b;->d:Ljava/lang/String;

    .line 582
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    const-string/jumbo v0, "\n    profileId: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 30352
    iget-object v2, p0, Lcom/avast/android/burger/b;->e:Ljava/lang/String;

    .line 583
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    const-string/jumbo v0, "\n    guid: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 30361
    iget-object v2, p0, Lcom/avast/android/burger/b;->f:Ljava/lang/String;

    .line 584
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    const-string/jumbo v0, "\n    partnerId: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 30426
    iget-object v2, p0, Lcom/avast/android/burger/b;->m:Ljava/lang/String;

    .line 585
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    const-string/jumbo v0, "\n    product code: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 31371
    iget v2, p0, Lcom/avast/android/burger/b;->g:I

    .line 586
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 587
    const-string/jumbo v0, "\n    product version: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 31380
    iget-object v2, p0, Lcom/avast/android/burger/b;->i:Ljava/lang/String;

    .line 587
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    const-string/jumbo v0, "\n    build variant: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 31391
    iget v2, p0, Lcom/avast/android/burger/b;->j:I

    .line 588
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 589
    const-string/jumbo v0, "\n    variant: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 31399
    iget v2, p0, Lcom/avast/android/burger/b;->k:I

    .line 589
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 590
    const-string/jumbo v0, "\n    vpn name: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 31408
    iget-object v2, p0, Lcom/avast/android/burger/b;->l:Ljava/lang/String;

    .line 590
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    const-string/jumbo v0, "\n    product event type prefix: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 31417
    iget v2, p0, Lcom/avast/android/burger/b;->h:I

    .line 591
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 592
    const-string/jumbo v0, "\n    backend url: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 31435
    iget-object v2, p0, Lcom/avast/android/burger/b;->n:Ljava/lang/String;

    .line 592
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    const-string/jumbo v0, "\n    envelope capacity: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 31444
    iget v2, p0, Lcom/avast/android/burger/b;->q:I

    .line 593
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 594
    const-string/jumbo v0, "\n    filtering rules: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31471
    iget-object v0, p0, Lcom/avast/android/burger/b;->F:Ljava/util/ArrayList;

    .line 595
    invoke-static {v1, v0}, Lcom/avast/android/burger/b;->a(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 596
    const-string/jumbo v0, "\n    queue capacity: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 32453
    iget v2, p0, Lcom/avast/android/burger/b;->o:I

    .line 596
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 597
    const-string/jumbo v0, "\n    sending interval: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 32462
    iget-wide v2, p0, Lcom/avast/android/burger/b;->p:J

    .line 597
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 598
    const-string/jumbo v0, "\n    abnTests: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32480
    iget-object v0, p0, Lcom/avast/android/burger/b;->r:Ljava/util/List;

    .line 599
    invoke-static {v1, v0}, Lcom/avast/android/burger/b;->a(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 600
    const-string/jumbo v0, "\n    heartbeat interval: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 32489
    iget-wide v2, p0, Lcom/avast/android/burger/b;->s:J

    .line 600
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 601
    const-string/jumbo v0, "\n    config version: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 32496
    iget-wide v2, p0, Lcom/avast/android/burger/b;->t:J

    .line 601
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 602
    const-string/jumbo v0, "\n    flush on config version changed: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 32503
    iget-boolean v2, p0, Lcom/avast/android/burger/b;->u:Z

    .line 602
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 603
    const-string/jumbo v0, "\n    log level: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 32511
    iget v2, p0, Lcom/avast/android/burger/b;->v:I

    .line 603
    invoke-static {v2}, Lcom/avast/android/burger/c/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    iget-object v0, p0, Lcom/avast/android/burger/b;->x:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 605
    const-string/jumbo v0, "\n    wallet key:: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/avast/android/burger/b;->x:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/avast/android/burger/b;->y:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 608
    const-string/jumbo v0, "\n    container id:: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/avast/android/burger/b;->y:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/avast/android/burger/b;->z:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 611
    const-string/jumbo v0, "\n    machine id:: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/avast/android/burger/b;->z:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    :cond_2
    const-string/jumbo v0, "\n    client telemetry: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 32550
    iget-boolean v2, p0, Lcom/avast/android/burger/b;->A:Z

    .line 613
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 614
    const-string/jumbo v0, "\n    user context provider: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/avast/android/burger/b;->B:Lcom/avast/android/burger/c;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 615
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    const-string/jumbo v0, "\n    ip: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 32568
    iget-object v2, p0, Lcom/avast/android/burger/b;->C:Ljava/lang/String;

    .line 616
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    const-string/jumbo v0, "\n    allow short intervals: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/burger/b;->c()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 618
    const-string/jumbo v0, "\n    is silent mode: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 32575
    iget-boolean v2, p0, Lcom/avast/android/burger/b;->D:Z

    .line 618
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 619
    const-string/jumbo v0, "\n}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 614
    :cond_3
    iget-object v0, p0, Lcom/avast/android/burger/b;->B:Lcom/avast/android/burger/c;

    .line 615
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
