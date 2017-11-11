.class Lcom/google/firebase/database/connection/idl/zzf;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/firebase/database/connection/idl/zzf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/database/connection/idl/d;

    invoke-direct {v0}, Lcom/google/firebase/database/connection/idl/d;-><init>()V

    sput-object v0, Lcom/google/firebase/database/connection/idl/zzf;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/firebase/database/connection/idl/zzf;->a:I

    iput-object p2, p0, Lcom/google/firebase/database/connection/idl/zzf;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/database/connection/idl/zzf;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/firebase/database/connection/idl/zzf;->d:Z

    return-void
.end method

.method public static a(Lcom/google/firebase/database/connection/idl/zzf;)Lcom/google/android/gms/internal/ia;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ia;

    iget-object v1, p0, Lcom/google/firebase/database/connection/idl/zzf;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/database/connection/idl/zzf;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/firebase/database/connection/idl/zzf;->d:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ia;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/ia;)Lcom/google/firebase/database/connection/idl/zzf;
    .locals 5

    .prologue
    .line 0
    new-instance v0, Lcom/google/firebase/database/connection/idl/zzf;

    const/4 v1, 0x1

    .line 1000
    iget-object v2, p0, Lcom/google/android/gms/internal/ia;->a:Ljava/lang/String;

    .line 2000
    iget-object v3, p0, Lcom/google/android/gms/internal/ia;->b:Ljava/lang/String;

    .line 3000
    iget-boolean v4, p0, Lcom/google/android/gms/internal/ia;->c:Z

    .line 0
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/firebase/database/connection/idl/zzf;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/database/connection/idl/d;->a(Lcom/google/firebase/database/connection/idl/zzf;Landroid/os/Parcel;)V

    return-void
.end method
