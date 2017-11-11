.class public abstract enum Lcom/google/android/gms/internal/og;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/og;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/og;

.field public static final enum b:Lcom/google/android/gms/internal/og;

.field private static final synthetic c:[Lcom/google/android/gms/internal/og;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/og$1;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/og$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/og;->a:Lcom/google/android/gms/internal/og;

    new-instance v0, Lcom/google/android/gms/internal/og$2;

    const-string/jumbo v1, "STRING"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/og$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/og;->b:Lcom/google/android/gms/internal/og;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/internal/og;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/internal/og;->a:Lcom/google/android/gms/internal/og;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/internal/og;->b:Lcom/google/android/gms/internal/og;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/og;->c:[Lcom/google/android/gms/internal/og;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/og;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/og;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/og;->c:[Lcom/google/android/gms/internal/og;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/og;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/og;

    return-object v0
.end method
