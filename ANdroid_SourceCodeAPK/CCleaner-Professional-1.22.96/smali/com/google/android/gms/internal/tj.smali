.class public final Lcom/google/android/gms/internal/tj;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/xy;

.field public final b:Landroid/content/Context;

.field public c:Lcom/google/android/gms/ads/a;

.field public d:Lcom/google/android/gms/internal/sb;

.field public e:Lcom/google/android/gms/internal/sw;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Lcom/google/android/gms/ads/doubleclick/a;

.field public i:Lcom/google/android/gms/ads/purchase/b;

.field public j:Lcom/google/android/gms/ads/purchase/a;

.field public k:Lcom/google/android/gms/ads/doubleclick/b;

.field public l:Lcom/google/android/gms/ads/e;

.field public m:Lcom/google/android/gms/ads/a/c;

.field public n:Z

.field private final o:Lcom/google/android/gms/internal/sj;

.field private p:Lcom/google/android/gms/ads/doubleclick/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/sj;->a()Lcom/google/android/gms/internal/sj;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/tj;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/sj;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/sj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/xy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/xy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/tj;->a:Lcom/google/android/gms/internal/xy;

    iput-object p1, p0, Lcom/google/android/gms/internal/tj;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/tj;->o:Lcom/google/android/gms/internal/sj;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/tj;->p:Lcom/google/android/gms/ads/doubleclick/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/tj;->e:Lcom/google/android/gms/internal/sw;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "The ad unit ID must be set on InterstitialAd before "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is called."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
