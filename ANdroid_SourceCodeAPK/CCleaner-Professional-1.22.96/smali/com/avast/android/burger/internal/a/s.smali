.class public final Lcom/avast/android/burger/internal/a/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b",
        "<",
        "Lcom/avast/android/burger/internal/config/a;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/avast/android/burger/internal/a/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/avast/android/burger/internal/a/s;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/avast/android/burger/internal/a/s;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/avast/android/burger/internal/a/q;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-boolean v0, Lcom/avast/android/burger/internal/a/s;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/avast/android/burger/internal/a/s;->b:Lcom/avast/android/burger/internal/a/q;

    .line 19
    return-void
.end method

.method public static a(Lcom/avast/android/burger/internal/a/q;)La/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avast/android/burger/internal/a/q;",
            ")",
            "La/a/b",
            "<",
            "Lcom/avast/android/burger/internal/config/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Lcom/avast/android/burger/internal/a/s;

    invoke-direct {v0, p0}, Lcom/avast/android/burger/internal/a/s;-><init>(Lcom/avast/android/burger/internal/a/q;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 8
    .line 1023
    iget-object v0, p0, Lcom/avast/android/burger/internal/a/s;->b:Lcom/avast/android/burger/internal/a/q;

    .line 1024
    invoke-virtual {v0}, Lcom/avast/android/burger/internal/a/q;->a()Lcom/avast/android/burger/internal/config/a;

    move-result-object v0

    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1023
    invoke-static {v0, v1}, La/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/burger/internal/config/a;

    .line 8
    return-object v0
.end method
