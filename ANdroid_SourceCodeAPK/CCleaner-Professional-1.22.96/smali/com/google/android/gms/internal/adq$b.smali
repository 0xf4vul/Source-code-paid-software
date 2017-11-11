.class final Lcom/google/android/gms/internal/adq$b;
.super Lcom/google/android/gms/internal/za;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/adq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/za",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final k:Lcom/google/android/gms/internal/adq$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/adq$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final l:Lcom/google/android/gms/internal/aaw$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/aaw$b",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/adq$a;Lcom/google/android/gms/internal/aaw$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/adq$a",
            "<TT;>;",
            "Lcom/google/android/gms/internal/aaw$b",
            "<TT;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/adq$b$1;

    invoke-direct {v0, p3, p2}, Lcom/google/android/gms/internal/adq$b$1;-><init>(Lcom/google/android/gms/internal/aaw$b;Lcom/google/android/gms/internal/adq$a;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/za;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/aaw$a;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/adq$b;->k:Lcom/google/android/gms/internal/adq$a;

    iput-object p3, p0, Lcom/google/android/gms/internal/adq$b;->l:Lcom/google/android/gms/internal/aaw$b;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/adq$b;)Lcom/google/android/gms/internal/adq$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/adq$b;->k:Lcom/google/android/gms/internal/adq$a;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/adq$b;)Lcom/google/android/gms/internal/aaw$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/adq$b;->l:Lcom/google/android/gms/internal/aaw$b;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/wy;)Lcom/google/android/gms/internal/aaw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/wy;",
            ")",
            "Lcom/google/android/gms/internal/aaw",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p1, Lcom/google/android/gms/internal/wy;->b:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p1}, Lcom/google/android/gms/internal/afm;->a(Lcom/google/android/gms/internal/wy;)Lcom/google/android/gms/internal/eo$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/aaw;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/eo$a;)Lcom/google/android/gms/internal/aaw;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 0
    check-cast p1, Ljava/io/InputStream;

    .line 1000
    new-instance v0, Lcom/google/android/gms/internal/adq$b$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/adq$b$2;-><init>(Lcom/google/android/gms/internal/adq$b;Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/adi;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/aeh;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/adq$b$3;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/adq$b$3;-><init>(Lcom/google/android/gms/internal/adq$b;Lcom/google/android/gms/internal/aeh;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/aeh;->b(Ljava/lang/Runnable;)V

    .line 0
    return-void
.end method
