.class final Lcom/google/android/gms/internal/ja$2;
.super Lcom/google/android/gms/internal/lg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ja;->a(Lcom/google/android/gms/internal/ls;Ljava/util/Map;)Lcom/google/android/gms/internal/ls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/google/android/gms/internal/jb;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/android/gms/internal/jb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ja$2;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/android/gms/internal/ja$2;->b:Lcom/google/android/gms/internal/jb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/lg$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)V
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ja$2;->a:Ljava/util/Map;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ja;->a(Lcom/google/android/gms/internal/ls;Ljava/util/Map;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    if-eq v0, p2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ja$2;->b:Lcom/google/android/gms/internal/jb;

    new-instance v2, Lcom/google/android/gms/internal/iu;

    .line 1000
    iget-object v3, p1, Lcom/google/android/gms/internal/lf;->a:Ljava/lang/String;

    .line 0
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/iu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/jb;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)V

    :cond_0
    return-void
.end method
