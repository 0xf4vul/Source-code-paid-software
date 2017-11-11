.class public final Lcom/google/android/gms/internal/mg;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field private b:[B

.field private c:B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mg;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/google/android/gms/internal/mg;->c:B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mg;->b:[B

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/mg;->c:B

    return-void
.end method
