.class public final Lcom/google/android/gms/internal/xb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# static fields
.field private static f:Lcom/google/android/gms/internal/xb;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/xb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/xb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/xb;->f:Lcom/google/android/gms/internal/xb;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/xb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/xb;->f:Lcom/google/android/gms/internal/xb;

    return-object v0
.end method


# virtual methods
.method final b()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/xb;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/xb;->e:I

    return-void
.end method
