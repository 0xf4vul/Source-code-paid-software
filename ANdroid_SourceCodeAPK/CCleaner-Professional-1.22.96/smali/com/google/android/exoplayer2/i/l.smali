.class public final Lcom/google/android/exoplayer2/i/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/i/f$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/exoplayer2/i/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/i/r",
            "<-",
            "Lcom/google/android/exoplayer2/i/f;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/exoplayer2/i/f$a;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/i/r;Lcom/google/android/exoplayer2/i/f$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/i/r",
            "<-",
            "Lcom/google/android/exoplayer2/i/f;",
            ">;",
            "Lcom/google/android/exoplayer2/i/f$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/i/l;->a:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/google/android/exoplayer2/i/l;->b:Lcom/google/android/exoplayer2/i/r;

    .line 60
    iput-object p3, p0, Lcom/google/android/exoplayer2/i/l;->c:Lcom/google/android/exoplayer2/i/f$a;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/exoplayer2/i/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/i/r",
            "<-",
            "Lcom/google/android/exoplayer2/i/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/google/android/exoplayer2/i/n;

    invoke-direct {v0, p2, p3}, Lcom/google/android/exoplayer2/i/n;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/i/r;)V

    invoke-direct {p0, p1, p3, v0}, Lcom/google/android/exoplayer2/i/l;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/i/r;Lcom/google/android/exoplayer2/i/f$a;)V

    .line 47
    return-void
.end method


# virtual methods
.method public final synthetic a()Lcom/google/android/exoplayer2/i/f;
    .locals 4

    .prologue
    .line 25
    .line 1065
    new-instance v0, Lcom/google/android/exoplayer2/i/k;

    iget-object v1, p0, Lcom/google/android/exoplayer2/i/l;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplayer2/i/l;->b:Lcom/google/android/exoplayer2/i/r;

    iget-object v3, p0, Lcom/google/android/exoplayer2/i/l;->c:Lcom/google/android/exoplayer2/i/f$a;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/i/f$a;->a()Lcom/google/android/exoplayer2/i/f;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/i/k;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/i/r;Lcom/google/android/exoplayer2/i/f;)V

    .line 25
    return-object v0
.end method
