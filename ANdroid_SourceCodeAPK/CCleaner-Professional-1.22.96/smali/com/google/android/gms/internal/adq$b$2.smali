.class final Lcom/google/android/gms/internal/adq$b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/adq$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/io/InputStream;

.field final synthetic b:Lcom/google/android/gms/internal/adq$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/adq$b;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/adq$b$2;->b:Lcom/google/android/gms/internal/adq$b;

    iput-object p2, p0, Lcom/google/android/gms/internal/adq$b$2;->a:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/adq$b$2;->b:Lcom/google/android/gms/internal/adq$b;

    invoke-static {v0}, Lcom/google/android/gms/internal/adq$b;->a(Lcom/google/android/gms/internal/adq$b;)Lcom/google/android/gms/internal/adq$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/adq$b$2;->a:Ljava/io/InputStream;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/adq$a;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
