.class final Lcom/google/android/gms/internal/iw$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/iw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/iw$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field public static final enum d:I

.field public static final enum e:I

.field public static final enum f:I

.field private static final synthetic g:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    sput v3, Lcom/google/android/gms/internal/iw$b;->a:I

    sput v4, Lcom/google/android/gms/internal/iw$b;->b:I

    sput v5, Lcom/google/android/gms/internal/iw$b;->c:I

    sput v6, Lcom/google/android/gms/internal/iw$b;->d:I

    sput v7, Lcom/google/android/gms/internal/iw$b;->e:I

    const/4 v0, 0x6

    sput v0, Lcom/google/android/gms/internal/iw$b;->f:I

    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/google/android/gms/internal/iw$b;->a:I

    aput v2, v0, v1

    sget v1, Lcom/google/android/gms/internal/iw$b;->b:I

    aput v1, v0, v3

    sget v1, Lcom/google/android/gms/internal/iw$b;->c:I

    aput v1, v0, v4

    sget v1, Lcom/google/android/gms/internal/iw$b;->d:I

    aput v1, v0, v5

    sget v1, Lcom/google/android/gms/internal/iw$b;->e:I

    aput v1, v0, v6

    sget v1, Lcom/google/android/gms/internal/iw$b;->f:I

    aput v1, v0, v7

    sput-object v0, Lcom/google/android/gms/internal/iw$b;->g:[I

    return-void
.end method
