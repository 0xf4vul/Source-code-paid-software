.class public Lcom/google/android/gms/common/internal/zzah;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/internal/zzah;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field final d:[Lcom/google/android/gms/common/api/Scope;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/f;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zzah;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/gms/common/internal/zzah;-><init>(III[Lcom/google/android/gms/common/api/Scope;)V

    return-void
.end method

.method constructor <init>(III[Lcom/google/android/gms/common/api/Scope;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/zzah;->a:I

    iput p2, p0, Lcom/google/android/gms/common/internal/zzah;->b:I

    iput p3, p0, Lcom/google/android/gms/common/internal/zzah;->c:I

    iput-object p4, p0, Lcom/google/android/gms/common/internal/zzah;->d:[Lcom/google/android/gms/common/api/Scope;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/f;->a(Lcom/google/android/gms/common/internal/zzah;Landroid/os/Parcel;I)V

    return-void
.end method