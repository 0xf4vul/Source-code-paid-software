.class public final Lcom/google/android/gms/internal/afo$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/afo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:I

.field final f:Lcom/google/android/gms/internal/afo$c;

.field g:Z

.field final h:Lcom/google/android/gms/internal/qg$d;

.field i:Z

.field final synthetic j:Lcom/google/android/gms/internal/afo;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/afo;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/afo$a;-><init>(Lcom/google/android/gms/internal/afo;[BB)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/afo;[BB)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/afo$a;->j:Lcom/google/android/gms/internal/afo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/afo$a;->j:Lcom/google/android/gms/internal/afo;

    invoke-static {v0}, Lcom/google/android/gms/internal/afo;->a(Lcom/google/android/gms/internal/afo;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/afo$a;->a:I

    iget-object v0, p0, Lcom/google/android/gms/internal/afo$a;->j:Lcom/google/android/gms/internal/afo;

    invoke-static {v0}, Lcom/google/android/gms/internal/afo;->b(Lcom/google/android/gms/internal/afo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/afo$a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/afo$a;->j:Lcom/google/android/gms/internal/afo;

    invoke-static {v0}, Lcom/google/android/gms/internal/afo;->c(Lcom/google/android/gms/internal/afo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/afo$a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/afo$a;->j:Lcom/google/android/gms/internal/afo;

    invoke-static {v0}, Lcom/google/android/gms/internal/afo;->d(Lcom/google/android/gms/internal/afo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/afo$a;->d:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/afo;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/afo$a;->e:I

    iput-object v4, p0, Lcom/google/android/gms/internal/afo$a;->k:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/google/android/gms/internal/afo$a;->l:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/google/android/gms/internal/afo$a;->m:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/google/android/gms/internal/afo$a;->n:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/afo$a;->g:Z

    new-instance v0, Lcom/google/android/gms/internal/qg$d;

    invoke-direct {v0}, Lcom/google/android/gms/internal/qg$d;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/afo$a;->h:Lcom/google/android/gms/internal/qg$d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/afo$a;->i:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/afo;->c(Lcom/google/android/gms/internal/afo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/afo$a;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/afo;->d(Lcom/google/android/gms/internal/afo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/afo$a;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/afo$a;->h:Lcom/google/android/gms/internal/qg$d;

    invoke-static {p1}, Lcom/google/android/gms/internal/afo;->e(Lcom/google/android/gms/internal/afo;)Lcom/google/android/gms/common/util/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/qg$d;->a:J

    iget-object v0, p0, Lcom/google/android/gms/internal/afo$a;->h:Lcom/google/android/gms/internal/qg$d;

    invoke-static {p1}, Lcom/google/android/gms/internal/afo;->e(Lcom/google/android/gms/internal/afo;)Lcom/google/android/gms/common/util/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/qg$d;->b:J

    iget-object v0, p0, Lcom/google/android/gms/internal/afo$a;->h:Lcom/google/android/gms/internal/qg$d;

    invoke-static {p1}, Lcom/google/android/gms/internal/afo;->f(Lcom/google/android/gms/internal/afo;)Lcom/google/android/gms/internal/afo$d;

    iget-object v1, p0, Lcom/google/android/gms/internal/afo$a;->h:Lcom/google/android/gms/internal/qg$d;

    iget-wide v2, v1, Lcom/google/android/gms/internal/qg$d;->a:J

    .line 1000
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    .line 0
    iput-wide v2, v0, Lcom/google/android/gms/internal/qg$d;->p:J

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/afo$a;->h:Lcom/google/android/gms/internal/qg$d;

    iput-object p2, v0, Lcom/google/android/gms/internal/qg$d;->k:[B

    :cond_0
    iput-object v4, p0, Lcom/google/android/gms/internal/afo$a;->f:Lcom/google/android/gms/internal/afo$c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/afo;[BC)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/afo$a;-><init>(Lcom/google/android/gms/internal/afo;[B)V

    return-void
.end method
