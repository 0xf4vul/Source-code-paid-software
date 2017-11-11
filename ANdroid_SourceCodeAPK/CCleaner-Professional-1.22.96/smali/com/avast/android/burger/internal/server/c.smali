.class public final Lcom/avast/android/burger/internal/server/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avast/android/burger/internal/server/a;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/avast/android/burger/b;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1435
    iget-object v0, p1, Lcom/avast/android/burger/b;->n:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/avast/android/burger/internal/server/c;->a:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "auth2.ff.avast.com"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/avast/android/burger/internal/server/c;->a:Ljava/lang/String;

    return-object v0
.end method
