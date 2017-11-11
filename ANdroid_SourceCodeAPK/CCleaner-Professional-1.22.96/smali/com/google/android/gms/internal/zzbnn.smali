.class public Lcom/google/android/gms/internal/zzbnn;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbnn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ha;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ha;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbnn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbnn;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbnn;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbnn;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbnn;->a:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbnn;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbnn;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ha;->a(Lcom/google/android/gms/internal/zzbnn;Landroid/os/Parcel;)V

    return-void
.end method
